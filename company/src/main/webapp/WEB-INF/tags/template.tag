<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ attribute name="title" required="true" %>
<%@ attribute name="textHeader" required="true" %>

<fmt:message key="footer.message" var="textFooter" />

<c:set var="textHeader" scope="request" value="${textHeader}" />
<c:set var="textFooter" scope="request" value="${textFooter}" />

<html>
	<head>
		<meta name="viewport" content="width=device-width">
		<meta charset="utf-8">
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700|Roboto+Slab:400,700|Pacifico' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="<c:url value="/resources/css/normalize.css" />" />
		<link rel="stylesheet" href="<c:url value="/resources/css/new.css" />" />
		<script type="text/javascript" src="<c:url value="/resources/js/jquery.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/jquery.inputmask.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/clientadd.js" />"></script>
		<title>${title}</title>
	</head>

	<body> 
		<div id="page-header">
			<jsp:include page="/WEB-INF/templates/header.jsp" />
			<jsp:include page="/WEB-INF/templates/menu.jsp" />
		</div>
		<div id="body">
			<jsp:doBody/>
		</div>
		<div id="page-footer">
			<jsp:include page="/WEB-INF/templates/footer.jsp" />
		</div>
		
	</body>
</html>