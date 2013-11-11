<%@ page import="org.tw_housing.Address" %>



<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="address.state.label" default="State" />
		
	</label>
	<g:textField name="state" maxlength="2" value="${addressInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="address.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${addressInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="address.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${addressInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'finishDate', 'error')} required">
	<label for="finishDate">
		<g:message code="address.finishDate.label" default="Finish Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="finishDate" precision="day"  value="${addressInstance?.finishDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="address.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${addressInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="address.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${org.tw_housing.User.list()}" optionKey="id" optionValue="name" required="" value="${addressInstance?.user?.id}" class="many-to-one"/>
</div>

