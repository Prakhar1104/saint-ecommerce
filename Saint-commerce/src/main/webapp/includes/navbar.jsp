<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">Saint-Gobain</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="cart.jsp">Cart
						<span style="color: red" class="badge badge-danger">${ cart_list.size() }</span> 
				</a></li>
				<%
				
				if (auth != null) {
				%> 
				<li class="nav-item"><a class="nav-link" href="orders.jsp">Orders</a></li>
				<li class="nav-item"><a class="btn btn-danger" href="log-out">Logout</a></li>
				<%-- <li class="nav-item"><a class="nav-link">Hey, <%=request.getParameter("login-email") %></a></li> --%>

				<li class="nav-item"><a class="btn btn-primary" href="account.jsp"><%=auth.getName() %></a> </li>
				<%
				} else {
				%> 
				<li class="nav-item"><a class="btn btn-primary" href="login.jsp">Login</a></li>
				<%
				}
				%> 
			</ul>
		</div>
	</div>
</nav>