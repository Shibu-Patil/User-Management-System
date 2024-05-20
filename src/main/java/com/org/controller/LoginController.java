package com.org.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;
import com.org.dto.User;
@WebServlet("/login")
public class LoginController extends HttpServlet
{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String email = req.getParameter("email");
	String password = req.getParameter("password");
	String captch=req.getParameter("captcha");
	
	HttpSession session2 = req.getSession();
	String genCaptch = (String)session2.getAttribute("genCaptch");
	
	if (genCaptch.equals(captch))
		
	{
	
	UserDao dao=new UserDao();
	User user=dao.fetchUserByEmailAndPassword(email, password);
	
   
	if (user != null)
	{
		HttpSession session = req.getSession();
		session.setAttribute("name", user.getName());
		session.setAttribute("id", user.getId());
		resp.sendRedirect("home.jsp");
		PrintWriter out = resp.getWriter();
		out.println("Ho gaya");
		out.println(user.getId());
		out.println(user.getName());
		out.println(user.getAge());
		out.println(user.getEmail());
		out.println(user.getPassword());
		out.println(user.getMobile());
		
		
		
		
		
	}
	
	else
	{
		resp.sendRedirect("login.jsp");
	}
	}
	else {
		
		
		session2.setAttribute("Invalid","Invalid captcha");
		resp.sendRedirect("login.jsp");
	}
   
}
}
