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
<%@include file="includes/head.jsp"%>
<title>User Registration</title>
</head>
<body>
	<%@include file="includes/navbar.jsp"%>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Registration</div>
			<div class="card-body">
				<form action="registeruser" method="post"> <!-- change here to user-register after making servlet -->
					<div class="form-group">
						<label>Username</label> <input type="text"
							name="register-username" class="form-control" placeholder="Enter username">
					</div>
					<div class="form-group my-3">
						<label>Email address</label> <input type="email"
							name="register-email" class="form-control" placeholder="Enter email">
					</div>
					<div class="form-group my-3">
						<label>Password</label> <input type="password"
							name="register-password" class="form-control" placeholder="Choose Password">
					</div>
					<div class="text-center my-3">
						<button type="submit" class="btn btn-primary">Register</button>
					</div>
					<a href="login.jsp" style="text-decoration:none">Already have an account?</a>
				</form>
			</div>
		</div>
	</div>

	<%@include file="includes/footer.jsp"%>
</body>
</html>