<%@ page import="com.threebaysover.images.Image" %>



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'bytes', 'error')} required">
	<label for="bytes">
		<g:message code="image.bytes.label" default="Bytes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="bytes" type="number" value="${imageInstance.bytes}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'createdAt', 'error')} required">
	<label for="createdAt">
		<g:message code="image.createdAt.label" default="Created At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdAt" precision="day"  value="${imageInstance?.createdAt}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'format', 'error')} required">
	<label for="format">
		<g:message code="image.format.label" default="Format" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="format" required="" value="${imageInstance?.format}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'height', 'error')} required">
	<label for="height">
		<g:message code="image.height.label" default="Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="height" type="number" value="${imageInstance.height}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'publicId', 'error')} required">
	<label for="publicId">
		<g:message code="image.publicId.label" default="Public Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="publicId" required="" value="${imageInstance?.publicId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'resourceType', 'error')} required">
	<label for="resourceType">
		<g:message code="image.resourceType.label" default="Resource Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="resourceType" required="" value="${imageInstance?.resourceType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'secureUrl', 'error')} required">
	<label for="secureUrl">
		<g:message code="image.secureUrl.label" default="Secure Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="secureUrl" required="" value="${imageInstance?.secureUrl}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'signature', 'error')} required">
	<label for="signature">
		<g:message code="image.signature.label" default="Signature" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="signature" required="" value="${imageInstance?.signature}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="image.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${imageInstance?.type}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="image.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="url" required="" value="${imageInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'width', 'error')} required">
	<label for="width">
		<g:message code="image.width.label" default="Width" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="width" type="number" value="${imageInstance.width}" required=""/>

</div>

