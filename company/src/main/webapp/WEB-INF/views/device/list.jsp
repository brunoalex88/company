<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<fmt:message key="device.list.titulo" var="title" />
<fmt:message key="device.list.text.header" var="headerText" />

<tags:template title="${title}" textHeader="${headerText}">

	<jsp:body>
		<table>
			<tr>
				<td>Descrição</td>
				<td>Tipo</td>
			</tr>
			<c:forEach items="${devices}" var="device">
				<tr>
					<td>
						${device.name}
					</td>
					<td>
						${device.type}
					</td>
				</tr>
			</c:forEach>
		</table>
	</jsp:body>

</tags:template>