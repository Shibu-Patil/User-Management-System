


<%@page import="com.org.dto.User"%>


<div class="navbar">
    <a href="index.jsp">
        <h1>User Management System</h1>
    </a>
    <div class="in">
     <%User user1=(User)session.getAttribute("success");
if (user1!=null)
{
	%>
	 <%="Registration Successfull" %>
	<%
}
session.removeAttribute("success");
%>
        <h2>Enter Your Details to Register</h2>
        <form action="register" method="post">
        Enter Your Name
        <input type="text" name="name" ><br>
        Enter Your Age
        <input type="number" name="age" ><br>
        Enter Your Email
        <input type="email" name="email" ><br>
        Enter Your Password
        <input type="password" name="password" ><br>
        Enter Your Mobile
        <input type="tel" name="mobile" ><br><br>
        <input type="submit" value="Sumbit">
        </form>
    </div>

</div>

<Style>

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

</Style>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        