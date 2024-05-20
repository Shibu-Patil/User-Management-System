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
@WebServlet("/forgetpassword")
public class ChangePasswordByMailAndName extends HttpServlet
{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String name = req.getParameter("name");
	String email = req.getParameter("email");
	String newpassword = req.getParameter("newpassword");
	String confirmpassword = req.getParameter("confirmpassword");
	HttpSession session = req.getSession();
	PrintWriter out = resp.getWriter();
	resp.setContentType("text/html");
	if (newpassword.equals(confirmpassword))
	{
	
	User user =new User();
	user.setName(name);
	user.setEmail(email);
	user.setPassword(confirmpassword);
	
	UserDao userDao = new UserDao();
	
	boolean b = userDao.FetchByMailandName(user);
	if(b==true) {
		out.println("<h4>Password Changed Successfully</h4>");
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("forgetpassword.jsp");
		requestDispatcher.include(req, resp);
	}
	else {
		out.println("<h4>Invalid Credential</h4>");
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("forgetpassword.jsp");
		requestDispatcher.include(req, resp);
		
	}
	
	}
	else {
		out.println("<h4>New Password And Confirm Passowrd did not match</h4>");
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("forgetpassword.jsp");
		requestDispatcher.include(req, resp);
	}
}
}
