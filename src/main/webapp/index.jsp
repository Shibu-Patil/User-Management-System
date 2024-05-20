<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="navbar">
    <h2>User Management System</h2>
<ul class="ul">
<li class="li"> <a href="register.jsp"> Registration</a></li>
<li class="li" > <a href="login.jsp"> Login</a></li>

</ul>
</div>


<div class="para">
    <p>
       <h3>Introduction:</h3> 
Welcome to the User Management portal. This page is designed to streamline the process of managing users within our system. Whether you're an administrator or a user seeking assistance, this platform offers a range of tools and features to efficiently handle user accounts.

<h4>Features:</h4>

<b>User Registration:</b>Register new users with ease using our intuitive interface. Administrators can set permissions and access levels during the registration process.

<br><b>User Profile Management:</b>Users can update their profiles, including personal information, contact details, and preferences.

<br><b>User Roles and Permissions:</b> Administrators have the ability to assign different roles and permissions to users based on their responsibilities within the system. This ensures proper access control and data security.

<br><b>User Authentication:</b> Our platform provides secure authentication mechanisms to verify the identity of users, preventing unauthorized access to sensitive information.

<br><b>User Search and Filtering:</b>Easily search for specific users and filter them based on various criteria such as name, email, or role.

<br><b>User Activity Tracking:</b>Keep track of user activities within the system, including login/logout times, changes to user profiles, and other relevant actions.

<br><b>User Deactivation/Activation:</b> Administrators can deactivate or activate user accounts as needed, ensuring compliance with company policies and regulations.

<h4>Benefits:</h4>

<b>Improved Efficiency:</b> Streamline user management processes, saving time and resources.
<br><b>Enhanced Security:</b>Maintain strict control over user access and permissions to protect sensitive data.
<br><b>Better User Experience:</b> Empower users to manage their own accounts and access relevant resources with ease.
<br><b>Compliance</b>:Ensure compliance with regulatory requirements by enforcing proper user management practices.

<h4>Conclusion:</h4>
Effective user management is essential for any organization to maintain security, efficiency, and compliance. Our User Management portal provides the tools and features needed to accomplish these goals while enhancing the overall user experience. Get started today and take control of your user accounts like never before!
    </p>

</div>

<style>
    .navbar{
        text-align: left;
        background-color: black;
        color: white;
        padding: 0.1px;  
        border-bottom-left-radius: 30px; 
        border-top-right-radius: 30px;
    }
    h2{
        margin-left: 30px;
        color: yellow;
    }
.navbar li {
    float: right ;
    padding: 40px;
    text-align: center;
    margin-top: -85px;
    font-size: 20px;
    text-decoration: none;
}
li a {
 text-decoration: none;
 color: deeppink;
}
ul{
    list-style-type: none;
}
body
{
    background-color: gray;
}
li a:hover
{
    color: darkturquoise;
}

b{
 font-size: 17px;
}
h4{
    font-size: 19px;
}
h3{
    font-size: 21px;
}
.para {
    display: block;
    background-color:lightyellow;
    padding: 15px;
    margin-top: 15px;
    border-radius: 15px;
    
}


</style>

</body>
</html>