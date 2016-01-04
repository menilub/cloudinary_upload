package com.threebaysover.images

/**
 *  domain class for Image metadata based of basic information retrun from Cloudinary upload
 *
 * @author Meni Lubetkin
 * @version 1.0
 */
class Image {

    String publicId
    Long version
    String signature
    Integer width
    Integer height
    String format
    String resourceType
    Date createdAt
    Long bytes
    String type
    String url
    String secureUrl

    static constraints = {
    }

    @Override
    public String toString() {
        return "CloudinaryUploadResult{" +
                "publicId='" + publicId + '\'' +
                ", version=" + version +
                ", signature='" + signature + '\'' +
                ", width=" + width +
                ", height=" + height +
                ", format='" + format + '\'' +
                ", resourceType='" + resourceType + '\'' +
                ", createdAt=" + createdAt +
                ", bytes=" + bytes +
                ", type='" + type + '\'' +
                ", url='" + url + '\'' +
                ", secureUrl='" + secureUrl + '\'' +
                "} " + super.toString();
    }

}
