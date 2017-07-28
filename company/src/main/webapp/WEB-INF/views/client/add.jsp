<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<fmt:message key="client.add.titulo" var="title" />
<fmt:message key="client.add.message" var="headerText" />
<c:url value="/client" var="salvar" />

<tags:template textHeader="${headerText}" title="${title}">
	
	${sucesso}
	
	<form:form servletRelativeAction="${salvar}" method="post" commandName="client">
		
		<table class="container">
			<tr>
				<td>
					<fmt:message key="client.add.nome" />
				</td>
			</tr>
			<tr>
				<td>
					<form:input path="nome" />
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
				<td><fmt:message key="client.add.nascimento" /></td>
			</tr>
			<tr>
				<td><form:input path="dataNascimento" /></td>
				<td><form:errors path="dataNascimento" /></td>
			</tr>
			<tr>
				<td><fmt:message key="client.add.telefone" /></td>
			</tr>
			<tr>
				<td><form:input path="telefone" onkeypress="maskrefactor()" /></td>
				<td><form:errors path="telefone" /></td>
			</tr>
			<tr>
				<td>
					<fmt:message key="client.add.endereco" />
				</td>
			</tr>			
			<tr>
				<td>
					<form:input path="endereco" />
				</td>
				<td><form:errors path="endereco" /></td>
			</tr>
			<tr>
				<td><fmt:message key="client.add.numero" /></td>
			</tr>
			<tr>
				<td><form:input path="numero" /></td>
				<td><form:errors path="numero" /></td>
			</tr>
			<tr>
				<td><fmt:message key="client.add.bairro" /></td>
			</tr>
			<tr>
				<td><form:input path="bairro" /></td>
			</tr>
			<tr>
				<td>
					<input type="submit" id="add" value="<fmt:message key="client.add.submit" />" />
				</td>
			</tr>
			
		</table>
		
	</form:form>
	
</tags:template>