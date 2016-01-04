
<%@ page import="com.threebaysover.images.Image" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-image" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-image" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list image">
			
				<g:if test="${imageInstance?.bytes}">
				<li class="fieldcontain">
					<span id="bytes-label" class="property-label"><g:message code="image.bytes.label" default="Bytes" /></span>
					
						<span class="property-value" aria-labelledby="bytes-label"><g:fieldValue bean="${imageInstance}" field="bytes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.createdAt}">
				<li class="fieldcontain">
					<span id="createdAt-label" class="property-label"><g:message code="image.createdAt.label" default="Created At" /></span>
					
						<span class="property-value" aria-labelledby="createdAt-label"><g:formatDate date="${imageInstance?.createdAt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.format}">
				<li class="fieldcontain">
					<span id="format-label" class="property-label"><g:message code="image.format.label" default="Format" /></span>
					
						<span class="property-value" aria-labelledby="format-label"><g:fieldValue bean="${imageInstance}" field="format"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.height}">
				<li class="fieldcontain">
					<span id="height-label" class="property-label"><g:message code="image.height.label" default="Height" /></span>
					
						<span class="property-value" aria-labelledby="height-label"><g:fieldValue bean="${imageInstance}" field="height"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.publicId}">
				<li class="fieldcontain">
					<span id="publicId-label" class="property-label"><g:message code="image.publicId.label" default="Public Id" /></span>
					
						<span class="property-value" aria-labelledby="publicId-label"><g:fieldValue bean="${imageInstance}" field="publicId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.resourceType}">
				<li class="fieldcontain">
					<span id="resourceType-label" class="property-label"><g:message code="image.resourceType.label" default="Resource Type" /></span>
					
						<span class="property-value" aria-labelledby="resourceType-label"><g:fieldValue bean="${imageInstance}" field="resourceType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.secureUrl}">
				<li class="fieldcontain">
					<span id="secureUrl-label" class="property-label"><g:message code="image.secureUrl.label" default="Secure Url" /></span>
					
						<span class="property-value" aria-labelledby="secureUrl-label"><g:fieldValue bean="${imageInstance}" field="secureUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.signature}">
				<li class="fieldcontain">
					<span id="signature-label" class="property-label"><g:message code="image.signature.label" default="Signature" /></span>
					
						<span class="property-value" aria-labelledby="signature-label"><g:fieldValue bean="${imageInstance}" field="signature"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="image.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${imageInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="image.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${imageInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.width}">
				<li class="fieldcontain">
					<span id="width-label" class="property-label"><g:message code="image.width.label" default="Width" /></span>
					
						<span class="property-value" aria-labelledby="width-label"><g:fieldValue bean="${imageInstance}" field="width"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:imageInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${imageInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
