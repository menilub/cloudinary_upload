package com.threebaysover.images

import grails.plugin.cloudinary.CloudinaryUploadResult
import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.MultipartHttpServletRequest

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ImageController {

    def imageService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Image.list(params), model:[imageInstanceCount: Image.count()]
    }

    def upload(){
        String fileLabel = params.fileLabel
        MultipartFile uploadedFile = null
        String fileName=""
        Image image
        try{
            if (request instanceof MultipartHttpServletRequest){
                //Get the file's name from request
                fileName = request.getFileNames()[0]
                //Get a reference to the uploaded file.
                uploadedFile = request.getFile(fileName)

                log.debug("File name : ${uploadedFile.originalFilename}")
                log.debug("File size : ${uploadedFile.size}")
                log.debug("File label : ${fileLabel}")
            }
            if (uploadedFile.empty) {
                flash.error = g.message(code:'',default:'Empty cannot be uploaded')
                return
            }
            image = imageService.upload(uploadedFile.bytes)
            if (image.validate()){
                image.save()
            }
        }
        catch (Exception e){
            flash.error = g.message(code:'',default: 'File upload failed due to internal errors. Please try again')
            return

        }
        render(view: "upload", model: [image: image])
    }


    def show(Image imageInstance) {
        respond imageInstance
    }

    def create() {
        respond new Image(params)
    }

    @Transactional
    def save(Image imageInstance) {
        if (imageInstance == null) {
            notFound()
            return
        }

        if (imageInstance.hasErrors()) {
            respond imageInstance.errors, view:'create'
            return
        }

        imageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'image.label', default: 'Image'), imageInstance.id])
                redirect imageInstance
            }
            '*' { respond imageInstance, [status: CREATED] }
        }
    }

    def edit(Image imageInstance) {
        respond imageInstance
    }

    @Transactional
    def update(Image imageInstance) {
        if (imageInstance == null) {
            notFound()
            return
        }

        if (imageInstance.hasErrors()) {
            respond imageInstance.errors, view:'edit'
            return
        }

        imageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Image.label', default: 'Image'), imageInstance.id])
                redirect imageInstance
            }
            '*'{ respond imageInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Image imageInstance) {

        if (imageInstance == null) {
            notFound()
            return
        }

        imageInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Image.label', default: 'Image'), imageInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'image.label', default: 'Image'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
