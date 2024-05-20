<%@page import="com.org.dto.User"%>
<%@page import="com.org.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.box1{
width: 100%;
height: 300px;
background-color: aqua;
position: relative;
left: 1250px;
top:10px;
padding: 10px;
border-bottom-left-radius:50px;
border-top-left-radius: 50px;
transition: 0.3s;
text-align: left;


}

.box1:hover
{
left: 450px;
}


h3{
position: relative;
left: 300px;
}


#mySidenav a {
	position: absolute; /* Position them relative to the browser window */
	left: -100px; /* Position them outside of the screen */
	transition: 0.3s; /* Add transition on hover */
	padding: 15px; /* 15px padding */
	width: 100px; /* Set a specific width */
	text-decoration: none; /* Remove underline */
	font-size: 20px; /* Increase font size */
	color: white; /* White text color */
	border-radius: 0 5px 5px 0;
	/* Rounded corners on the top right and bottom right side */
}

#mySidenav a:hover {
	left: 0; /* On mouse-over, make the elements appear as they should */
}

/* The about link: 20px from the top with a green background */
#Profile {
	top: 20px;
	background-color: #04AA6D;
}

#Change {
	top: 80px;
	background-color: #2196F3; /* Blue */
}

#Logout {
	top: 165px;
	background-color: #f44336; /* Red */
}

h1 {
	position: absolute;
	left: 530px;
	top: 80px;
}

body {
	background-color: darkslategrey;
}

.box {
	display: inline-block;
	width: 100%;
	height: 230px;
	background-color: lightcyan;
	border-radius: 15px;
	border-top-right-radius: 250px;
	border-color: black;
	border-width: 3px;
	border-style: solid;
	border-left-width: 0px;
	text-align: center;
}

h2 {
	margin-top: 200px;
	margin-left: 50px;
}

h4{
font-size: 25px;
}
 
 #btn{
 position: relative;
 width: 80px;
 height: 40px;
 bottom: 120px;
 background-color: yellow;
 }
 
 

</style>
</head>
<body>

	<h1>User Management System</h1>


	<div class="box">
		<h2>
			Welcome to Your Profile
		</h2>
<div class="box1">
<%int id = (Integer) session.getAttribute("id");
UserDao dao=new UserDao(); 

User user=dao.FetchById(id);
%>
<h3>Your Name is :-<%= user.getName()%> <br><br><br>
Your Age is:-<%= user.getAge()%><br><br><br>
Your Email is:- <%= user.getEmail()%><br><br><br>
Your Mobile Number is:-<%= user.getMobile()%></h3>

<form action="update.jsp" method="post">
<input type="submit" value="Update" id="btn">
</form>
</div>

</div>
	<div id="mySidenav" class="sidenav">
		<a href="home.jsp" id="Profile">Home</a> 
		<a href="ChangePassword.jsp" id="Change">Change Password</a> 
		<a href="logout.jsp" id="Logout">Logout</a>

	</div>
	
	
	
</body>
</html>