package com.threebaysover.images

import com.cloudinary.Cloudinary
import grails.plugin.cloudinary.CloudinaryConfig
import grails.transaction.Transactional

@Transactional
class ImageService {

    def cloudinaryService
    CloudinaryConfig cloudinaryConfig
    Cloudinary cloudinary

    Image upload(byte[] imageData, Map<String, Object> options = [:]) {
        uploadInternally(imageData, options)
    }

    Image upload(String imageUrl, Map<String, Object> options = [:]) {
        uploadInternally(imageUrl, options)
    }

    Image upload(File imageFile, Map<String, Object> options = [:]) {
        uploadInternally(imageFile, options)
    }


    Image uploadInternally(Object imageObject, Map<String, Object> options = [:]) {
        log.debug("Uploading image to cloudinary...")
        toImage(cloudinary.uploader().upload(imageObject, cloudinaryService.withCredentials(options)))
    }


    static Image toImage(Map<String, Object> cloudinaryResult) {
        cloudinaryResult? new Image(
                publicId: cloudinaryResult.'public_id',
                version: cloudinaryResult.version as Long,
                signature: cloudinaryResult.signature,
                width: cloudinaryResult.width as Integer,
                height: cloudinaryResult.height as Integer,
                format: cloudinaryResult.format,
                resourceType: cloudinaryResult.'resource_type',
                bytes: cloudinaryResult.bytes as Long,
                type: cloudinaryResult.type,
                url: cloudinaryResult.url,
                secureUrl: cloudinaryResult.'secure_url',
                createdAt: Date.parse('yyyy-MM-dd\'T\'HH:mm:ss', String.valueOf(cloudinaryResult.'created_at'))
        ) : null
    }
}
