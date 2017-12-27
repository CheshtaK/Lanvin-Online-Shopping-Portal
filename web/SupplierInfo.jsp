<%-- 
    Document   : SupplierInfo
    Created on : Oct 16, 2017, 9:10:29 PM
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

#sinfo{
	width:60%;
	border-spacing: 5px;
	position: absolute;
	left: 445px;
	top: 140px;
	box-shadow: 0px 0px 20px rgba(0,0,0,0.10),
     0px 10px 20px rgba(0,0,0,0.05),
     0px 20px 20px rgba(0,0,0,0.05),
     0px 30px 20px rgba(0,0,0,0.05);
    border: 1px solid #eee;
    border-bottom: 2px solid #ff3399 ;
    padding: 20px;
    line-height: 15px;
    background: white;
}
th{
	padding: 20px;
	font-size:15px;
	font-family:Arial Black;
	background: #cc99ff;
}

td{
	border-right: 1px solid #fff;
    border-left: 1px solid #e8e8e8;
    border-top: 1px solid #fff;
    border-bottom: 1px solid #e8e8e8;
    padding: 10px 15px;
    position: relative;
    transition: all 300ms;
	font-size:15px;
	font-family:Bookman;
}

tbody:hover tr:hover td {
    color: mediumvioletred;
    text-shadow: 0 1px 0 #999999;
}

button{
	font-size: 15px;
	font-family:Helvetica ;
	font-weight: bold;
	background-color:#cc99ff;
	border-radius: 9.5px;
}

caption{
	font-size:35px;
	font-weight:bold;
	font-family:Garamond;
	color:mediumvioletred;
}

#supinf{
	position: absolute;
	left: 150px;
	top: 375px;
	height: 75px;
	width: 200px;
	border-radius: 8px;
	background-color:#ff3399;
	padding: 20px;
}

#news{
	position: absolute;
	left: 150px;
	top: 475px;
	height: 75px;
	width: 200px;
	border-radius: 8px;
	background-color:#ff3399;
	padding: 20px;
}

#supinf:hover{
	background-color:#ff66b3;
}

</style>
<title></title>
</head>
<body>
<button id="supinf" style="font-size:20px;font-family:Arial Black;color:white" onclick="javascript:toggle('sinfo');javascript:toggle('news')">Supplier Info</button>
<button id="news" style="font-size:15px;font-family:Arial Black;color:white;display:none" onclick="location.href='http://localhost:8080/LanvinF/NewSupplier.jsp';">Add New Supplier</button>
<center>
<form method="post" name="form1">
<table id="sinfo" style="display:none;">
<caption>Supplier Information</caption>
	<tr>
		<th>SupplierID</th>
		<th>Name</th>
		<th>Company</th>
	</tr>
        <%
            PrintWriter pw1 = response.getWriter();
            Connection con1;
            Statement st1; 
            ResultSet rs1;
            try
            {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineShopping","root","cheshta");
		st1 = con1.createStatement();
		rs1 = st1.executeQuery("select * from SupplierInfo");
                while(rs1.next())
                {
        %>
       <tbody>
	<tr>
		<td><%= rs1.getString(1) %></td>
		<td><%= rs1.getString(2) %></td>
		<td><%= rs1.getString(3) %></td>
		<td><button onclick="editRecord1(<%=rs1.getString(1)%>)">Edit</button></td>
                <td><button onclick="deleteRecord1(<%=rs1.getString(1)%>)">Delete</button></td>
	</tr>
	</tbody>
        <%      }
            }
            catch(Exception e)
            {
                pw1.println(e);
            }
        %>
</table>
</form>
</center>
</div>
<script>
	function toggle(layer){
		var d1= document.getElementById(layer);
		d1.style.display = (d1.style.display=='none')?'':'none';
	}
        function editRecord1(SupplierID){
                var f1=document.form1;
                f1.method="post";
                f1.action='SupplierEdit.jsp?SupplierID='+SupplierID;
                f1.submit();
        }
        function deleteRecord1(SupplierID){
                var f1=document.form1;
                f1.method="post";
                f1.action='http://localhost:8080/LanvinF/DeleteSupplier?SupplierID='+SupplierID;
                f1.submit();
        }
</script>
</body>
</html>
