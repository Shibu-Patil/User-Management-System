package com.org.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;
import com.org.dto.User;
@WebServlet("/changepassword")
public class ChangePasswordController extends HttpServlet {
	
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String oldpassword = req.getParameter("oldpassword");
	String newpassword = req.getParameter("newpassword");
	String confirmpassword = req.getParameter("confirmpassword");
	int id =Integer.parseInt(req.getParameter("id")) ;
	resp.setContentType("text/html");
	PrintWriter out = resp.getWriter();
	if(oldpassword.equals(newpassword))
	{
		 out.println("<h4>Old password Cannot Be Same as New Password</h4>");
		  RequestDispatcher requestDispatcher =req.getRequestDispatcher("ChangePassword.jsp");
		  requestDispatcher.include(req, resp);
		
		
	}
	else {
	if(newpassword.equals(confirmpassword))
	{
		UserDao dao=new UserDao();
		boolean user=dao.fetchuserbyidandpassword(id, newpassword,oldpassword);
		if(user==true)
		{
			//out.println("<h1>Password Changed Successfully</h1>");
			//resp.sendRedirect("ChangePassword.jsp");
			  out.println("<h4>Password Changed Successfully</h4>");
			  RequestDispatcher requestDispatcher =req.getRequestDispatcher("ChangePassword.jsp");
			  requestDispatcher.include(req, resp);
			
		}
		
		else {
			
			out.println("<h4>Enter Correct Old Password</h4>");
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("ChangePassword.jsp");
			requestDispatcher.include(req, resp);	
		}
	}
	
	else {
		out.println("<h4>New Password and Confirm Password Did not match</h4>");
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("ChangePassword.jsp");
		requestDispatcher.include(req, resp);	
		
	}
}
}

}
