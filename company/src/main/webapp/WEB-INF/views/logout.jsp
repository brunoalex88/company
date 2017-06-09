<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><fmt:message key="logout.titulo" /></title>
</head>
<body>
	<form:form servletRelativeAction="/login" method="get">
		<table class="center">
			<tr>
				<td>Login</td>
				<td><input type="submit" value='<fmt:message key="logout.login" />' />
			</tr>
		</table>		
	</form:form>
</body>
</html>