<%-- 
    Document   : NewProduct
    Created on : Oct 16, 2017, 8:05:54 PM
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

.background {
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
	left: 130px;
}

#ProductID{
	position:absolute;
	top: 140px;
	left: 55px;
	height: 45px;
	width: 305px;
	border-radius: 6px;
}

#Name{
	position:absolute;
	top: 193px;
	left: 55px;
	height: 45px;
	width: 305px;
	border-radius: 6px;
}

#Brand{
	position:absolute;
	top: 246px;
	left: 55px;
	height: 45px;
	width: 305px;
	border-radius: 6px;
}

#Description{
	position:absolute;
	top: 299px;
	left: 55px;
	height: 45px;
	width: 305px;
	border-radius: 6px;
}

#AddButton{
	position:absolute;
	top: 375px;
	left: 55px;
	height: 50px;
	width: 305px;
	border-radius: 8px;
	background-color:#ff3399;
}

#AddButton:hover{
	background-color:#ff66b3;
}

</style>
        <title>ProductAdd</title>
    </head>
        <div>
<%@include file="Header.jsp" %>
</div>
<body>
<div class="background">
	<form action="http://localhost:8080/LanvinF/InsertProduct" method="post">
	 	<div class="heading" style="font-size:35px;weight:bold;font-family:Garamond;color:mediumvioletred">Add Product</div>
	 	<input id="ProductID" type="number" name="pid" style="font-size:15px;font-family:Bookman" placeholder=" Product ID" required>
	 	<input id="Name" type="text" name="name" style="font-size:15px;font-family:Bookman" placeholder=" Name" required>
	 	<input id="Brand" type="text" name="brand" style="font-size:15px;font-family:Bookman" placeholder=" Brand" required>
	 	<input id="Description" type="text" name="description" style="font-size:15px;font-family:Bookman" placeholder=" Description" required>
		<input id="AddButton" type="submit" style="font-size:15px;font-family:Arial Black;color:white" value="ADD">
	</form>
</div>
</body>
</html>
