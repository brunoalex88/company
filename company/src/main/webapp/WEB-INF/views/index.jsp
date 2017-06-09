<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<fmt:message key="home.titulo" var="title" />
<fmt:message key="home.message" var="textHeader" />

<tags:template textHeader="${textHeader}" title="${title}">

	<div class="home-body">
		<a href="<c:url value="/device/add" />" class="button hvr-shutter-in-vertical">
			<fmt:message key="home.device.add" />
		</a>
	</div>
	
	<div class="home-body">
		<a href="<c:url value="/client/add" />" class="button hvr-shutter-in-vertical">
			<fmt:message key="home.client.add" />
		</a>
	</div>
	
	<div class="home-body">
		<a href="<c:url value="/device/list" />" class="button hvr-shutter-in-vertical">
			<fmt:message key="home.device.list" />
		</a>
	</div>
	
</tags:template>