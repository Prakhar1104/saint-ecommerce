<%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.dao.ProductDao"%>
<%@page import="java.util.*"%>
<%@page import="cn.techtutorial.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
User auth = (User) request.getSession().getAttribute("auth");

//For cart display everywhere
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	List<Cart> cartProduct = null;
	if (cart_list != null) {
		ProductDao pDao = new ProductDao(DbCon.getConnection());
		cartProduct = pDao.getCartProducts(cart_list);
		double total = pDao.getTotalCartPrice(cart_list);
		request.setAttribute("total", total);
		request.setAttribute("cart_list", cart_list);
	}
%>
<!DOCTYPE html>
<html>
<head>
<%@include file="includes/head.jsp"%>
<title>Account</title>
</head>
<body>
	<%@include file="includes/navbar.jsp"%>
	<div class="container my-5">
		<div>Hello <%=auth.getName()%> </div>
		<div>Email- <%=auth.getEmail()%> </div>
		<div><a class="btn btn-danger" href="log-out">Logout</a></div>
	</div>

	<%@include file="includes/footer.jsp"%>
</body>
</html>