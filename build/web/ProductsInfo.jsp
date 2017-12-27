<%-- 
    Document   : ProductsInfo
    Created on : Oct 16, 2017, 9:07:35 PM
    Author     : chesh
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>

#pinfo{
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
	font-size: 15px;
	font-family:Bookman;
	white-space: no wrap;
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

#proinf{
	position: absolute;
	left: 150px;
	top: 275px;
	height: 75px;
	width: 200px;
	border-radius: 8px;
	background-color:#ff3399;
	padding: 20px;
}

#newp{
	position: absolute;
	left: 150px;
	top: 475px;
	height: 75px;
	width: 200px;
	border-radius: 8px;
	background-color:#ff3399;
	padding: 20px;
}

#proinf:hover{
	background-color:#ff66b3;
}

</style>
<title></title>
</head>
<body>
<button id="proinf" style="font-size:20px;font-family:Arial Black;color:white" onclick="javascript:toggle('pinfo');javascript:toggle('newp');">Product Info</button>
<button id="newp" style="font-size:15px;font-family:Arial Black;color:white;display:none" onclick="location.href='http://localhost:8080/LanvinF/NewProduct.jsp';">Add New Product</button>
<center>
<form method="post" name="form">
<table id="pinfo" style="display:none;">
<caption>Product Information</caption>
	<tr>
		<th>ProductID</th>
		<th>Name</th>
                <th>Brand</th>
		<th>Description</th>
	</tr>
        <%  
            PrintWriter pw = response.getWriter();
            Connection con;
            Statement st; 
            ResultSet rs;
            try
            {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineShopping","root","cheshta");
		st = con.createStatement();
		rs = st.executeQuery("select * from ProductInfo");
                while(rs.next())
                {
        %>
                
	<tbody>
	<tr>
		<td><%= rs.getString(1) %></td>
		<td><%= rs.getString(2) %></td>
		<td><%= rs.getString(3) %></td>
		<td><%= rs.getString(4) %></td>
		<td><button onclick="editRecord(<%=rs.getString(1)%>)">Edit</button></td>
                <td><button onclick="deleteRecord(<%=rs.getString(1)%>)">Delete</button></td>
	</tr>
        </tbody>
        <%      }
            }
            catch(Exception e)
            {
                pw.println(e);
            }
        %>
</table>
</form>
</center>
<script>
	function toggle(layer){
		var d= document.getElementById(layer);
		d.style.display = (d.style.display=='none')?'':'none';
	}
        function editRecord(ProductID){
                var f=document.form;
                f.method="post";
                f.action='ProductEdit.jsp?ProductID='+ProductID;
                f.submit();
        }
        function deleteRecord(ProductID){
                var f=document.form;
                f.method="post";
                f.action='http://localhost:8080/LanvinF/DeleteProduct?ProductID='+ProductID;
                f.submit();
        }
</script>
</body>
</html>
