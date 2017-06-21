<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<fmt:message key="client.add.titulo" var="title" />
<fmt:message key="client.add.message" var="headerText" />

<tags:template textHeader="${headerText}" title="${title}">
	
	${sucesso}
	
	<form:form servletRelativeAction="/company/client/" method="post" commandName="client">
		
		<table class="container-body">
			<tr>
				<td>
					<fmt:message key="client.add.nome" />
				</td>
			</tr>
			<tr>
				<td>
					<form:input path="nome" size="50" />
				</td>
				<td>
					<form:errors path="nome" />
				</td>
			</tr>
			<tr>
				<td>
					<fmt:message key="client.add.cpf" />
				</td>
			</tr> 
			<tr>
				<td>
					<form:input path="cpf" />
				</td>
				<td>
					<form:errors path="cpf" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="<fmt:message key="client.add.submit" />" />
				</td>
			</tr>
			
		</table>
		
	</form:form>
	
</tags:template>