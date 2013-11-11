<%@ page import="org.tw_housing.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${userInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'addresses', 'error')} ">
	<label for="addresses">
		<g:message code="user.addresses.label" default="Addresses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.addresses?}" var="a">
    <li><g:link controller="address" action="show" id="${a.city}, ${a.state}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="address" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'address.label', default: 'Address')])}</g:link>
</li>
</ul>

</div>

