<%-- 
    Document   : LoginPage
    Created on : Oct 16, 2017, 8:04:46 PM
    Author     : chesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
body{
    background-color: #ffccff;
}

.background{
    background-color: white;
    position: relative;
    width: 30px;
    height: 95px;
    box-shadow: 10px 10px 5px grey;
    padding: 200px;
    margin-top: 100px;
    margin-left: 450px;
}

.heading{
    position: absolute;
    top: 50px;
    left: 105px;
}

#UserName{
    position:absolute;
    top: 150px;
    left: 50px;
    height: 50px;
    width: 325px;
    border-radius: 6px;
}

#PasswordBox{
    position:absolute;
    top: 205px;
    left: 50px;
    height: 50px;
    width: 325px;
    border-radius: 6px;
}

#LoginButton{
    position:absolute;
    top: 300px;
    left: 50px;
    height: 50px;
    width: 325px;
    border-radius: 8px;
    background-color:#ff3399;
}

#LoginButton:hover{
    background-color:#ff66b3;
}

#RecoverPassword{
    position:absolute;
    top: 400px;
    left: 50px;	
}

#NewUser{
    position:absolute;
    top: 427px;
    left: 50px;	
}

#NewUser1{
    position:absolute;
    top: 427px;
    left: 145px;
}
        </style>
    <title>Login Page</title>
    </head>
    <body>` 
        <div class="background">
	<form action="http://localhost:8080/LanvinF/LoginServlet" method="post">
	<div class="heading" style="font-size:35px;weight:bold;font-family:Garamond;color:mediumvioletred">Login to Lanvin</div>
	<input id="UserName" type="text" name="username" style="font-size:15px;font-family:Bookman" placeholder=" Enter Username" required> 
	<input id="PasswordBox" type="password" name="password" style="font-size:15px;font-family:Bookman" placeholder=" Enter Password" required>
	<input id="LoginButton" type="submit" style="font-size:15px;font-family:Arial Black;color:white" value="LOG IN">
	<a href="" id="RecoverPassword" style="font-size:14px;color:#ff3399">Recover Password</a>
	<font id="NewUser" style="font-size:14px">New to Lanvin?</font>
	<a href="http://localhost:8080/LanvinF/RegisterServlet" id="NewUser1" style="font-size:14px;color:#ff3399">Create Account</a>
        </form>
        </div>
    </body>
    <div>
    <%@include file="Header.jsp" %>
    </div> 
    <div>
    <%@include file="Footer.jsp" %>
    </div>
</html>
