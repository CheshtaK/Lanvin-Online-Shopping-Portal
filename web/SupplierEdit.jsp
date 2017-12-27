<%-- 
    Document   : SupplierEdit
    Created on : Oct 16, 2017, 9:09:51 PM
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

#SupplierID{
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

#Company{
	position:absolute;
	top: 246px;
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
<title>SupplierEdit</title>
</head>
<div>
<%@include file="Header.jsp" %>
</div>
<body>
<div class="background">
	<form action="http://localhost:8080/LanvinF/SupplierUpdate" method="post">
        <%
            String SupplierID=request.getParameter("SupplierID");
            int n1=Integer.parseInt(SupplierID); 
            PrintWriter pw1 = response.getWriter();
            Connection con1;
            Statement st1; 
            ResultSet rs1;
            try
            {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineShopping","root","cheshta");
		st1 = con1.createStatement();
		rs1 = st1.executeQuery("select * from SupplierInfo where SupplierID='"+n1+"'");
                while(rs1.next())
                {
        %>
	 	<div class="heading" style="font-size:35px;weight:bold;font-family:Garamond;color:mediumvioletred">Edit Supplier</div>
	 	<input id="SupplierID" type="number" name="SupplierID" value="<%= rs1.getString("SupplierID")%>" style="font-size:15px;font-family:Bookman" placeholder=" Supplier ID" required>
	 	<input id="Name" type="text" name="Name" value="<%= rs1.getString("Name")%>" style="font-size:15px;font-family:Bookman" placeholder=" Name" required>
	 	<input id="Company" type="text" name="Company" value="<%= rs1.getString("Company")%>" style="font-size:15px;font-family:Bookman" placeholder=" Company" required>
		<input type="hidden" name="SupplierID" value="<%=rs1.getString(1)%>">
                <input id="EditButton" type="submit" style="font-size:15px;font-family:Arial Black;color:white" value="EDIT">
	<%      }
            }
            catch(Exception e)
            {
                pw1.println(e);
            }
        %>
        </form>
</div>
</body>
</html>