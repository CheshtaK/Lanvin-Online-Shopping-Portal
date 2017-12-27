<%-- 
    Document   : Order
    Created on : Dec 17, 2017, 1:13:08 PM
    Author     : chesh
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
       html,
body {
  width: 100%;
  height: 100%;
  margin: 0;
  font-family: 'Roboto', sans-serif;
}

.shopping-cart {
  width: 700px;
  height: 500px;
  margin: 80px auto;
  background: thistle;
  box-shadow: 1px 2px 3px 0px rgba(0,0,0,0.10);
  border-radius: 10px;
  position: absolute;
  left: 410px;
  display: flex;
  flex-direction: column;
}

.title {
  height: 70px;
  border-bottom: 1px solid #E1E8EE;
  padding: 20px 30px;
  color: #5E6977;
  font-size: 28px;
  font-weight: 400;
}

.details{
    position: relative;
    left: 120px;
    top: 25px;
}
.details1{
    position: relative;
    left: 120px;
    top: 5px;
}
.details2{
    position: relative;
    left: 100px;
    top: 5px;
}

.order{
    position: absolute;
    left: 490px;
    top: 425px;
    width: 150px;
    height: 40px;
    background-color: #660066;
    color: #fff;
    border-radius: 8px;
    display: inline-block;
    transition: all 0.5s;
    cursor: pointer;
    margin: 5px;
}

.order span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.order span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.order:hover span {
  padding-right: 25px;
}

.order:hover span:after {
  opacity: 1;
  right: 0;
}

hr{
    position: relative;
    left:-10px;
    top: 10px;
    border-top: 1px solid #E1E8EE;
}

button{
    position: relative;
    top: -45px;
    left: 500px;
    width: 150px;
}
</style>

    </head>
    <body>
        <div>
            <%@include file="NewHeader1.jsp" %>
        </div>
<form name="form2">
        <div class="shopping-cart">
            <div class="title">Order Summary</div>
            <%
                try
                {
                    Connection con;
                    Statement st;
                    ResultSet rs;
                    int amount=0, saving=0;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineShopping","root","cheshta");
                    st = con.createStatement();
                    rs = st.executeQuery("select * from OrderF");
                    while(rs.next()){
                        amount = rs.getInt(2)+rs.getInt(3);
                        saving = rs.getInt(1)-rs.getInt(2);
            %>
            <div class="details">
            <h2 style="font-size: 25px">Total Price&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Rs.&nbsp;<%=rs.getString(1)%></h2>
            <h2 style="font-size: 25px">Sub Total &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Rs.&nbsp;<%=rs.getString(2)%></h2>
            <h2 style="font-size: 25px">Tax &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Rs.&nbsp;<%=rs.getString(3)%></h2>
            <h2 style="font-size: 25px">Delivery &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;FREE</h2>
            </div>
            <hr>
            <div class="details1">
                <h1 style="font-size: 28px">Amount Payable&emsp;&emsp;&emsp;&emsp;&emsp;Rs.&nbsp;<%= amount %></h1>
            </div>
            <hr>
            <div class="details2">
                <h3 style="font-size: 30px;font-family: fantasy">Your total savings on this order Rs.&nbsp;<%=saving%></h3>
            </div>
            <button class="order"><span><a style="text-decoration: none" href="http://localhost:8080/LanvinF/OrderServlet">Place Order</a></span></button>
             <%
                }
}
                catch(Exception e)
                {
                    System.out.println(e);
                }
                %>
        </div>
</form>
    </body>
</html>
