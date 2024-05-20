<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

body {
	background-color: lightgreen;
}

.pass{

width: 280px;
height: 350px;
background-color: lightskyblue;
position: relative;
left:500px;
padding-top:30px;
text-align: center;
padding-bottom: 30px;
padding-left: 80px;
padding-right: 80px;
border-top-left-radius: 50px;
border-top-right-radius: 50px;
}

a {
	position:relative;
	text-decoration: none;
	left: 530px;
	background-color: black;
	color: white;
	padding: 10px;
	top: 20px;
	border-top-left-radius: 10px;
  border-top-right-radius: 10px;
	 
}

.h4{
position: absolute;
text-align: center;
left: 600px;
top: 500px;

}
</style>
</head>
<body>
<h1><a href="index.jsp">User Management System</a></h1>
<div class="pass">

<form action="forgetmail" method="post">
<h2>Enter your datails</h2>
 Enter Your Name<input type="text" name="name"><br> <br> <br> 
Enter your Mobile Number<input type="tel" name="mobile"> <br> <br>
 <br>
 <br><br> 
<input type="submit" value="Sumbit" >
</form>

</body>
</html>