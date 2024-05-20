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
@WebServlet("/update")
public class UpdateByIdController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		String email = req.getParameter("email");
		Long mobile = Long.parseLong(req.getParameter("mobile"));
		
		//System.out.println("--->>"+id);
		User user=new User();
		user.setId(id);
		//System.out.println(id);
		user.setName(name);
		//System.out.println(name);
		user.setAge(age);
		user.setEmail(email);
		user.setMobile(mobile);
		UserDao dao=new UserDao();
		boolean user1=dao.UpdateById(id, user);
		
		resp.setContentType("text/html");
		
		
		
		PrintWriter out = resp.getWriter();
		
		if (user1=true)
		{
			
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("home.jsp");
			requestDispatcher.include(req, resp);
			
		}
		
	}

}
