<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

body{
background: rgba(176, 0, 0, 0.2)
}
.logout{
position:relative;
left:400px;
width:500px;
height:200px;
background-color: white;
border-style: groove;
border-color: black;
border-width:10px;
text-align: center;
top: 200px;
}

#yes{
position: relative;
left: -50px;
top: 30px;
}

#no{
position: relative;
left: 50px;
}

input {
	width: 50px;
	height: 30px;
}


</style>
</head>
<body>

<div class="logout">
<h1>Are You Sure You Want To Logout</h1>
<form action="yes" method="post">

<input type="submit" value="Yes" id="yes">
</form>

<form action="no" method="post">

<input type="submit" value="No" id="no">
</form>

</div>

</body>
</html>