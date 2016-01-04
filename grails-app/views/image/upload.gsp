<%@ page import="com.threebaysover.images.Image" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
    <title>Upload</title>
</head>

<body>
<g:if test="${image}">
    <div>50x50:<cl:img id="${image.publicId}" width="50" height="50" crop="fit"/></div>

    <div>150x150:<cl:img id="${image.publicId}" width="150" height="150" crop="fit"/></div>

    <div>250x250:<cl:img id="${image.publicId}" width="250" height="250" crop="fit"/></div>

    <div>Full size:<cl:img id="${image.publicId}" crop="fit"/></div>

    <p>URL: ${image.url}</p>
</g:if>
<g:else>
    No Image was upload
</g:else>
</body>
</html>
