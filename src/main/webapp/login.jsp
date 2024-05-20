<%@page import="com.org.dto.User"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="components/bootCss.jsp" %>

<style type="text/css">
 body{
        background-color: darkslategrey;
    }
    .navbar {
        background-color: darkslategrey;

    }
    .navbar input{
        background-color: lightgrey;
        position: relative;  
        margin-left: 180px; 
        margin-top: -18px;
    }
    .in{
        
        background-color: lightsteelblue;
        padding-top:100px;
        padding-bottom:100px;
        padding-left:50px;
        margin-top: 200px;
        width: 450px;
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
    color: yellow;
}
.re{
position: relative;
left:80px;
bottom: 10px;
}


.str{
width: 50px;
height: 25px;
background-color: white;
text-align: center;
position: relative;
left: 235px;
top:00px;
}
.forget{
position: relative;
left: 190px;
}
</style>
</head>
<body>
<div class="navbar">
    <a href="index.jsp">
        <h1>User Management System</h1>
    </a>
    <div class="in">
        <form action="login" method="post">
        Enter Your Email
        <input type="email" name="email" ><br>
        Enter Your Password
        <input type="password" name="password" ><br><br>
        <%
        Random r=new Random();
		String str = ""+r.nextInt(9)+r.nextInt(9)+r.nextInt(9)+r.nextInt(9);
		session.setAttribute("genCaptch",str);
        %>
                <div class="str"><%=str%></div> 
          Enter Captcha<input type="text" name="captcha"> <br> <br>
          
        <input type="submit" value="Submit">

        </form>
       
        <div class="re">
        <form action="register.jsp">
        <input type="submit" value="Register Here">
        </form> 
        </div>
      
       <div class="forget"> 
       <a href="UpdateMailOrPassword.jsp"><button>Forget Id or Password</button></a>
        </div>
       <%
       String invalid=(String) session.getAttribute("Invalid");
        if(invalid!=null)
        {
        %>
       <h4 style="text-align: center;position: relative;top: 50px;"><%=invalid %></h4> 
       <%} 
       session.removeAttribute("Invalid");
       %>
    </div>
</div>


</body>
</html>