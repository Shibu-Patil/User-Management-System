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

public class RegisterController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		Long mobile = Long.parseLong(req.getParameter("mobile"));
		
		User user=new User();
		user.setName(name);
		user.setAge(age);
		user.setEmail(email);
		user.setPassword(password);
		user.setMobile(mobile);
		
		UserDao dao=new UserDao();
		dao.saveUser(user);
		
		HttpSession session = req.getSession();
		
		session.setAttribute("success", user);	 
		 
			 resp.sendRedirect("register.jsp");
		
		/*
		 * resp.setContentType("text/html"); PrintWriter out = resp.getWriter();
		 * out.println("<h1>Registration Successful</h1>"); RequestDispatcher
		 * requestDispatcher = req.getRequestDispatcher("register.jsp");
		 * requestDispatcher.include(req, resp);
		 */
		
		
		
	}

}
