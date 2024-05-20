<%@page import="com.org.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<% int id= Integer.parseInt(request.getParameter("id"));
UserDao dao=new UserDao();
dao.DeleteById(id);
response.sendRedirect("home.jsp");
%>
</body>
</html>