<%@ page import="com.threebaysover.images.Image" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
    <title>Upload</title>
</head>
<body>
<div><cl:img id="${image.publicId}" width="50" height="50" crop="fit"/></div>
<div><cl:img id="${image.publicId}" width="150" height="150" crop="fit"/></div>
<div><cl:img id="${image.publicId}" width="250" height="250" crop="fit"/></div>
<div><cl:img id="${image.publicId}" width="250" height="250" crop="fit"/></div>
<p>${image.url}</p>
</body>
</html>
