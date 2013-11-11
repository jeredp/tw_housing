
<%@ page import="org.tw_housing.Address" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-address" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list address">
			
				<g:if test="${addressInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="address.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${addressInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="address.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${addressInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="address.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${addressInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.finishDate}">
				<li class="fieldcontain">
					<span id="finishDate-label" class="property-label"><g:message code="address.finishDate.label" default="Finish Date" /></span>
					
						<span class="property-value" aria-labelledby="finishDate-label"><g:formatDate date="${addressInstance?.finishDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="address.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${addressInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${addressInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="address.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${addressInstance?.user?.id}">${addressInstance?.user?.name}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:addressInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${addressInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
