<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ attribute name="title" required="true" %>
<%@ attribute name="textHeader" required="true" %>

<fmt:message key="footer.message" var="textFooter" />

<c:set var="textHeader" scope="request" value="${textHeader}" />
<c:set var="textFooter" scope="request" value="${textFooter}" />

<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="<c:url value="/resources/css/template.css" />" /> 
		<title>${title}</title>
	</head>

	<body> 
		<div id="page-header">
			<jsp:include page="/WEB-INF/templates/header.jsp" />
		</div>
		<div id="body">
			<jsp:include page="/WEB-INF/templates/menu.jsp" />				
			<jsp:doBody/>
		</div>
		<div id="page-footer">
			<jsp:include page="/WEB-INF/templates/footer.jsp" />
		</div>
		
	</body>
</html>