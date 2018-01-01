<%-- 
    Document   : RegistrationPage
    Created on : Oct 16, 2017, 9:09:12 PM
    Author     : chesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.jsp" %>
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
    height: 220px;
    box-shadow: 10px 10px 5px grey;
    padding: 200px;
    margin-top: 100px;
    margin-left: 450px;
}

.heading{
    position: absolute;
    top: 50px;
    left: 82px;
}

#FirstName{
    position:absolute;
    top: 130px;
    left: 55px;
    height: 45px;
    width: 150px;
    border-radius: 6px;
}

#LastName{
    position:absolute;
    top: 130px;
    left: 210px;
    height: 45px;
    width: 150px;
    border-radius: 6px;
}

#MobileNumber{
    position:absolute;
    top: 183px;
    left: 55px;
    height: 45px;
    width: 305px;
    border-radius: 6px;
}

#EmailAddress{
    position:absolute;
    top: 236px;
    left: 55px;
    height: 45px;
    width: 305px;
    border-radius: 6px;
}

#Gender{
    position:absolute;
    top: 289px;
    left: 55px;
    height: 45px;
    width: 305px;
    border-radius: 6px;
}

#Username{
    position:absolute;
    top: 342px;
    left: 55px;
    height: 45px;
    width: 305px;
    border-radius: 6px;
}

#Password{
    position:absolute;
    top: 395px;
    left: 55px;
    height: 45px;
    width: 150px;
    border-radius: 6px;
}

#ConfirmPassword{
    position:absolute;
    top: 395px;
    left: 210px;
    height: 45px;
    width: 150px;
    border-radius: 6px;
}
#RegisterButton{
    position:absolute;
    top: 490px;
    left: 55px;
    height: 50px;
    width: 305px;
    border-radius: 8px;
    background-color:#ff3399;
}

#RegisterButton:hover{
    background-color:#ff66b3;
}

#Already{
    position:absolute;
    top: 570px;
    left: 55px;	
}

#Already1{
    position:absolute;
    top: 570px;
    left: 210px;	
}
        </style>
    <title>Registration Page</title>
    </head>
    
    <body>
        <div class="background">
	<form action="http://localhost:8080/LanvinF/RegisterServlet" method="post">
	<div class="heading" style="font-size:35px;weight:bold;font-family:Garamond;color:mediumvioletred">Signup with Lanvin</div>
	<input id="FirstName" type="text" name="fname" style="font-size:15px;font-family:Bookman" placeholder=" First Name" autofocus required>
	<input id="LastName" type="text" name="lname" style="font-size:15px;font-family:Bookman" placeholder=" Last Name" required>
	<input id="MobileNumber" type="number" name="mobile" style="font-size:15px;font-family:Bookman" placeholder=" Mobile Number" maxlength="10" pattern="[0-9]{10}" required>
	<input id="EmailAddress" type="email" name="email" style="font-size:15px;font-family:Bookman" placeholder=" Email Address" required>
	<input id="Gender" type="text" name="gender" style="font-size:15px;font-family:Bookman" placeholder=" Gender">
	<input id="Username" type="text" name="uname" style="font-size:15px;font-family:Bookman" placeholder=" UserName" required>
	<input id="Password" type="password" name="password" style="font-size:15px;font-family:Bookman" placeholder=" Password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="The password must be 6 digit long and should contain atleast one number,one lowercase and one uppercase letter ">
	<input id="ConfirmPassword" type="password" name="cpassword" style="font-size:15px;font-family:Bookman" placeholder=" Confirm Password" required>
	<input id="RegisterButton" type="submit" style="font-size:15px;font-family:Arial Black;color:white" value="REGISTER">
	<font id="Already" style="font-size:14px">Already have an account?</font>
	<a href="http://localhost:8080/LanvinF/LoginServlet" id="Already1" style="font-size:14px;color:#ff3399">Login!</a>
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
