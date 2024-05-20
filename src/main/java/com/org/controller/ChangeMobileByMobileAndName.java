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

@WebServlet("/forgetmail")
public class ChangeMobileByMobileAndName extends HttpServlet
{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String name = req.getParameter("name");
	long mobile = Long.parseLong(req.getParameter("mobile"));
	
	UserDao userDao = new UserDao();
	User user = userDao.FetchbyMobileAndName(mobile, name);
	
	PrintWriter out = resp.getWriter();
	resp.setContentType("text/html");

	if (user!=null) {
	out.println("<div class='h4'><h4>Your Email id is:-"+user.getEmail()+"</h4></div>");
	RequestDispatcher requestDispatcher = req.getRequestDispatcher("forgetmail.jsp");
	requestDispatcher.include(req, resp);
	
	
	}
	else {
		out.println("<div class='h4'><h4>Invalid Credentials</h4></div>");
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("forgetmail.jsp");
		requestDispatcher.include(req, resp);
		
	}
}
}
