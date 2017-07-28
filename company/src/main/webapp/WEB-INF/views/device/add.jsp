<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<fmt:message key="device.add.titulo" var="title" />
<fmt:message key="device.add.message" var="headerText" />

<tags:template textHeader="${headerText}" title="${title}">
		
	<form:form action="/company/device" method="post" commandName="device">
	
		<table class="container">
			<tr>
				<td><fmt:message key="device.add.name" /></td>
			</tr>
			<tr>
				<td>
					<form:input path="name" />
				</td>
			</tr>
			<tr>
				<td><form:errors path="name" /></td>
			</tr>
			<tr>
				<td>
					<fmt:message key="device.add.type" /></td>
				</tr>
			<tr>
				<td class="td-border">
					<form:radiobuttons path="type" items="${types}" itemLabel="tipo" />
				</td>
			</tr>
			<tr>
				<td>
					<form:errors path="type" />
				</td>
			</tr>
			<tr>
				<td>
					<fmt:message key="device.add.cliente" />
				</td>
			</tr>				
			<tr>
				<td> 
					<form:select path="client" items="${clientes}" 
						itemLabel="nome" itemValue="id"  />
				</td>
			</tr>
			<tr>
				<td>
					<form:errors path="client" />
				</td>
			</tr>
			<tr>
				<td><input type="submit" value='<fmt:message key="device.add.submit" />' /></td>
			</tr>	
		</table>
		
	</form:form>
</tags:template>
