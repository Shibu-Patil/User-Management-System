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
height: 450px;
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

h4{
position: relative;
left: 550px;

}
</style>
</head>


<body>

<h1><a href="index.jsp">User Management System</a></h1>
<div class="pass">

<form action="forgetpassword" method="post">
<h2>Enter your datails</h2>
 Enter Your Name<input type="text" name="name"><br> <br> <br> 
Enter your Email Address<input type="email" name="email"> <br> <br>
 <br>
 Enter New Password<input type="password" name="newpassword"> <br><br><br> 
 Confirm Password<input type="password" name="confirmpassword"> <br><br><br> 
 <br><br> 
<input type="submit" value="Sumbit" >
</form>

</div>
</body>
</html>