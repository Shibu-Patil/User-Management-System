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

    body{
        background-color: black;
    }
    .navbar {
        background-color: white;
    }
    .navbar input{
        background-color: red;
        position: relative;  
        margin-left: 180px; 
        margin-top: -18px;
    }
    .in{
        
        background-color: lightsteelblue;
        padding: 70px;
        margin-top: 80px;
        width: 400px;
        float: right;
        border-top-right-radius: 50px;
        border-bottom-left-radius: 50px;
        margin-right: 30px;
       text-align: left;
    }

    input{
        display: list-item;
        font-size: 15px;
    }
    h2{

       text-align: left;
       font-size: 30px;
       text-align: left;
    }
h1{
    position: absolute;
    top: 250px;
    left: 100px;
    font-size: 50px;
    color: white;
}

</style>
</head>
<body>
<%int id=(Integer)session.getAttribute("id");
UserDao dao=new UserDao(); 

User user=dao.FetchById(id);


%>
<div class="navbar">
    
         <a href="home.jsp">
        <h1>User Management System</h1>
    </a>
        </div>
  
    <div class="in">
        <h2>Enter Your Details to Update</h2>
        <form action="update" method="post">
        <input type="hidden" name="id" value="<%=id%>">
        Enter Your Name
        <input type="text" name="name" value="<%=user.getName() %>" ><br>
        Enter Your Age
        <input type="number" name="age" value="<%=user.getAge() %>"><br>
        Enter Your Email
        <input type="email" name="email"value="<%=user.getEmail()%>" ><br>
        Enter Your Mobile
        <input type="tel" name="mobile" value="<%=user.getMobile() %>"><br><br>
        
        <input type="submit" value="Update">
        </form>
    </div>
   </div>


	
</body>
</html>