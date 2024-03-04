<%@page import="cn.techtutorial.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	<%
		User auth = (User) request.getSession().getAttribute("auth");
		if (auth != null) {
			request.setAttribute("auth", auth);
		}
	%>
<!DOCTYPE html>
<html>
<head>
<%@include file="includes/head.jsp" %>
<title>Orders-page</title>
</head>
<body>
<%@include file="includes/navbar.jsp" %>
	<div class=container >
		orders
	</div>
	
<%@include file="includes/footer.jsp" %>
</body>
</html>