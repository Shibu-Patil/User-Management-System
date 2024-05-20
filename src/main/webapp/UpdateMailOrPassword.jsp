<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

body {
	background-color: beige;
}
.sel{
width: 500px;
height: 300px;
background-color: lightpink;
position: relative;
left: 400px;
top: 150px;
text-align: center;
border-style: groove;
border-width:10px;
border-color: brown; 
border-radius: 100px;
}
a {
position:relative;
top:20px;
text-decoration: none;
}

select {
	
	width:200px;
	height:50px;	
	position: relative;
	left: 10px;
	top: 80px;
	font-size: 15px;
}
</style>
</head>
<body>
<div class="sel">
<h1><a href="login.jsp">User Managment System</a></h1>
<select class="select" onchange="location=this.value">
<option>Select Option</option>
<option value="forgetmail.jsp">Forget Mail Id </option>
<option value="forgetpassword.jsp">Forget Password</option>
</select>
</div>
</body>
</html>