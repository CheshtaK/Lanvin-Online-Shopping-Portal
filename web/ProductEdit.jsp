<%-- 
    Document   : ProductEdit
    Created on : Oct 16, 2017, 8:22:23 PM
    Author     : chesh
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
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

#EditButton{
	position:absolute;
	top: 375px;
	left: 55px;
	height: 50px;
	width: 305px;
	border-radius: 8px;
	background-color:#ff3399;
}

#EditButton:hover{
	background-color:#ff66b3;
}

</style>
<title>ProductEdit</title>
</head>
<div>
<%@include file="Header.jsp" %>
</div>
<body>
<div class="background">
	<form action="http://localhost:8080/LanvinF/ProductUpdate" method="post">
	<%
            String ProductID=request.getParameter("ProductID");
            int n=Integer.parseInt(ProductID); 
            PrintWriter pw = response.getWriter();
            Connection con;
            Statement st; 
            ResultSet rs;
            try
            {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineShopping","root","cheshta");
		st = con.createStatement();
		rs = st.executeQuery("select * from ProductInfo where ProductID='"+n+"'");
                while(rs.next())
                {
        %>
                <div class="heading" style="font-size:35px;weight:bold;font-family:Garamond;color:mediumvioletred">Edit Product</div>
                <input id="ProductID" type="number" name="ProductID" value="<%= rs.getString("ProductID")%>"style="font-size:15px;font-family:Bookman" placeholder=" Product ID" required>
	 	<input id="Name" type="text" name="Name" value="<%= rs.getString("Name")%>" style="font-size:15px;font-family:Bookman" placeholder=" Name" required>
                <input id="Brand" type="text" name="Brand" value="<%= rs.getString("Brand")%>"style="font-size:15px;font-family:Bookman" placeholder=" Brand" required>
                <input id="Description" type="text" name="Description" value="<%= rs.getString("Description")%>" style="font-size:15px;font-family:Bookman" placeholder=" Description" required>
		<input type="hidden" name="ProductID" value="<%=rs.getString(1)%>">
                <input id="EditButton" type="submit" style="font-size:15px;font-family:Arial Black;color:white" value="EDIT">
	<%      }
            }
            catch(Exception e)
            {
                pw.println(e);
            }
        %>
        </form>
</div>
</body>
</html>

