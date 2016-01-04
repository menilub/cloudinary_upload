
<%@ page import="com.threebaysover.images.Image" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-image" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-image" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="bytes" title="${message(code: 'image.id.label', default: 'id')}" />
					
						<g:sortableColumn property="createdAt" title="${message(code: 'image.createdAt.label', default: 'Created At')}" />
					
						<g:sortableColumn property="format" title="${message(code: 'image.format.label', default: 'Format')}" />
					
						<g:sortableColumn property="height" title="${message(code: 'image.height.label', default: 'Height')}" />

						<g:sortableColumn property="width" title="${message(code: 'image.width.label', default: 'Width')}" />

						<g:sortableColumn property="publicId" title="${message(code: 'image.publicId.label', default: 'Public Id')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'image.url.label', default: 'URL')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${imageInstanceList}" status="i" var="imageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${imageInstance.id}">${fieldValue(bean: imageInstance, field: "id")}</g:link></td>
					
						<td><g:formatDate date="${imageInstance.createdAt}" /></td>
					
						<td>${fieldValue(bean: imageInstance, field: "format")}</td>
					
						<td>${fieldValue(bean: imageInstance, field: "height")}</td>

						<td>${fieldValue(bean: imageInstance, field: "width")}</td>

						<td>${fieldValue(bean: imageInstance, field: "publicId")}</td>
					
						<td><g:link uri="${fieldValue(bean: imageInstance, field: "url")}">${fieldValue(bean: imageInstance, field: "publicId")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${imageInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
