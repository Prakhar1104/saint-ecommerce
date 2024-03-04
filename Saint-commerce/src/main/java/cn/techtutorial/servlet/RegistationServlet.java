package cn.techtutorial.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import cn.techtutorial.connection.DbCon;
import cn.techtutorial.dao.UserDao;

@WebServlet("/registeruser")
public class RegistationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()){
			String username = request.getParameter("register-username");
			String email = request.getParameter("register-email");
			String password = request.getParameter("register-password");
//			out.print(nm+" "+em+" "+ps+" ");
			
			UserDao udao = new UserDao(DbCon.getConnection());
			boolean isRegister = udao.userRegister(username, email, password);
			if(isRegister) {
				System.out.println("Registration successful");
				response.sendRedirect("login.jsp");
			}
			else {
				System.out.println("Registration failed");
				response.sendRedirect("register.jsp");
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

}
