<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

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
	top: 143px;
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
.in-box{
width: 300px;
height: 200px;
background-color: lightskyblue;
display: block;
position: relative;
left: 550px;
list-style: none;
padding: 50px;
text-align: center;
top: 50px;
border-radius: 10px;
border-width: 5px;
border-style: double;
border-color: blue;
}

 h4{
 position:relative;
 top:300px;
 left:70px;
 text-align:center;
 color: white;
}
</style>
</head>
<body>
<h1>User Management System</h1>
<div class="box">
	<h2>
			Change Your Password
		</h2>
	</div>
<%int id=(Integer)session.getAttribute("id"); %>
<div class="in-box">
<form action="changepassword" method="post">
Enter Your Old Password
  <input type="password" name="oldpassword"> <br> <br>
  Enter New Password
  <input type="password" name="newpassword"> <br> <br>
  Enter Confirm Password
  <input type="password" name="confirmpassword"> <br> <br> <br>
  <input type="hidden" name="id" value="<%=id%>">
  
  <input type="submit" >
  </form>
</div>
	<div id="mySidenav" class="sidenav">
		<a href="home.jsp" id="Profile">Home</a> 
		<a href="profile.jsp" id="Change">Profile</a> 
		<a href="logout.jsp" id="Logout">Logout</a>

	</div>
	
</body>
</html>