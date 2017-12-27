<%-- 
    Document   : Product
    Created on : Oct 16, 2017, 8:21:33 PM
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

h1{
	position: absolute;
	left: 130px;
	top: 150px;
	font-size:35px;
	font-weight:bold;
	font-family:Garamond;
	
}
</style>
    <title>Admin Page</title>
    </head>
        <div>
<%@include file="Header.jsp" %>
</div>
<div>
<%@include file="ProductsInfo.jsp" %>
</div>
<div>
<%@include file="SupplierInfo.jsp" %>
</div>
<body>
<h1>Welcome Admin!</h1>
</body>
</html>

