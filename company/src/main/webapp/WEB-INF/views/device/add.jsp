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
	
		<div class=table>
			<table>
				<tr>
					<td class="top"><label for="name"><fmt:message key="device.add.name" /></label></td>
				</tr>
				<tr>
					<td class="border-color">
						<form:input path="name" size="50" cssClass="border" />
					</td>
				</tr>
				<tr>
					<td><form:errors path="name" /></td>
				</tr>
				<tr>
					<td class="top">
						<fmt:message key="device.add.type" /></td>
					</tr>
				<tr>
					<td class="border">
						<form:radiobuttons path="type" items="${types}" itemLabel="tipo" cssStyle=""/>
					</td>
				</tr>
				<tr>
					<td>
						<form:errors path="type" />
					</td>
				</tr>
				<tr>
					<td class="top">
						<fmt:message key="device.add.cliente" />
					</td>
				</tr>				
				<tr>
					<td> 
						<form:select path="client" items="${clientes}" 
							itemLabel="nome" cssStyle="width: 380px; font-size: 15px;"
							itemValue="id"  />
					</td>
				</tr>
				<tr>
					<td>
						<form:errors path="client" />
					</td>
				</tr>
				<tr>
					<td class="top"><input type="submit" value='<fmt:message key="device.add.submit" />' /></td>
				</tr>	
			</table>
		</div>
		
	</form:form>
</tags:template>
