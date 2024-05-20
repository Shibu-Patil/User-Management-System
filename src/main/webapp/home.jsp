<%@page import="com.org.dto.User"%>
<%@page import="java.util.List"%>
<%@page import="com.org.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
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
	background-color: skyblue;
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

table {
	width: 100%;
	background-color: hotpink;
	border-radius: 10px;
	position: relative;
	top: 20px;
	margin-bottom: 10px;
}

.tables {
	border-collapse: separate;
	border-spacing: 10px 15px;
}
</style>
</head>
<body>
	<%
	String name = (String) session.getAttribute("name");
	int id = (Integer) session.getAttribute("id");
	%>
	<h1>User Management System</h1>


	<div class="box">
		<h2>
			Hey
			<%=name%>
			welcome to Home page
		</h2>
	</div>
	<div id="mySidenav" class="sidenav">
		<a href="profile.jsp" id="Profile">Profile</a> <a
			href="ChangePassword.jsp" id="Change">Change Password</a> <a
			href="logout.jsp" id="Logout">Logout</a>

	</div>

	<table class="tables">
		<tr>
			<th style="background-color: yellow; border-radius: 15px;">Name</th>
			<th style="background-color: yellow; border-radius: 15px;">Age</th>
			<th style="background-color: yellow; border-radius: 15px;">Email</th>
			<th style="background-color: yellow; border-radius: 15px;">Mobile</th>
			<th style="background-color: yellow; border-radius: 15px;">Action</th>
		</tr>


		<%
		UserDao userdao = new UserDao();
		List<User> userl = userdao.fetchalluser();
		for (User user : userl) {
			if (user.getId() == id) {
				continue;
			}
		%>

		<tr>
		
			
			<td
				style="text-align: center; background-color: white; border-radius: 5px;"><%=user.getName()%></td>
			<td
				style="text-align: center; background-color: white; border-radius: 5px;"><%=user.getAge()%></td>
			<td
				style="text-align: center; background-color: white; border-radius: 5px;"><%=user.getEmail()%></td>
			<td
				style="text-align: center; background-color: white; border-radius: 5px;"><%=user.getMobile()%></td>
			<td style="background-color: white;border-radius: 5px;"><a href="update1.jsp?id=<%=user.getId() %>"
				style="text-decoration: none;"><button
						style="background-color: green;position: relative;left: 80px;">Update</button></a><a
				href="delete.jsp?id=<%=user.getId() %>" style="text-decoration: none;position: relative;left: 150px;"><button
						style="background-color: Red;">Delete</button></a></td>

		</tr>
		<%
		}
		%>

	</table>

</body>
</html>