<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>		
		<title><fmt:message key="login.titulo" /></title>
		<link rel="stylesheet" href="<c:url value="/resources/css/login.css" />" />
	</head>

	<body>
		<form:form servletRelativeAction="/login">
			<c:if test="${param.error ne null}">
				<div class="error">
				    Your login attempt was not successful, try again.<br />
				    Reason: ${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}
				</div>
			</c:if>
			
			<div class="container">
				
				<form:form servletRelativeAction="/login">
					<img alt="Company Logo" src="<c:url value="/resources/images/logo.png" />">
					<p />
					
					<table>
						<tr>
							<td>
								<label for="username">
									<fmt:message key="login.usuario" />
								</label>
							</td>
							<td>
								<input type="text" name="username" value="" id="username" />
							</td>
						</tr>
						<tr>
							<td>
								<label for="password">
									<fmt:message key="login.senha" />
								</label>
							</td>
							<td>
								<input type="password" name="password" value="" id="password" />
							</td>
						</tr>
	
					</table>
					
					<input name="submit" type="submit" value='<fmt:message key="login.login" />' 
									onclick="return validate();"/>
				</form:form>
			</div>
									
		</form:form>
		
		<script type="text/javascript">
			function validate() {
			    if (document.getElementById("username").value == "" && document.getElementById("password").value == "") {
			        alert("Usuário e senha são obrigatórios");
			        document.getElementById("username").focus();
			        return false;
			    }
			    
			    if (document.getElementById("password").value == "") {
			    	alert("Senha é obrigatória");
			    }
			    
			    if (document.getElementById("username").value == "") {
			    	alert("Usuário é oberigatório")
			    }
			    
			}
			
			window.onload = function() {
			  document.getElementById("username").focus();
			};
		</script>
	
	</body>

</html>