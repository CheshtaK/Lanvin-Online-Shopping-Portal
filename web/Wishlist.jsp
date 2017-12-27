<%-- 
    Document   : Wishlist
    Created on : Dec 16, 2017, 9:58:16 PM
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
            * {
  box-sizing: border-box;
}
 
html,
body {
  width: 100%;
  height: 100%;
  margin: 0;
  font-family: 'Roboto', sans-serif;
}

.shopping-cart {
  width: 850px;
  height: 1523px;
  margin: 80px auto;
  background: thistle;
  box-shadow: 1px 2px 3px 0px rgba(0,0,0,0.10);
  border-radius: 10px;
  position: absolute;
  left: 330px;
  display: flex;
  flex-direction: column;
}

.title {
  height: 60px;
  border-bottom: 1px solid #E1E8EE;
  padding: 20px 30px;
  color: #5E6977;
  font-size: 18px;
  font-weight: 400;
}

.image{
    position: relative;
    top: 20px;
    left:20px;
}

.brand{
    position: relative;
    left: 230px;
    top: -170px;
    font-size: 25px;
    font-weight: bold;
}

.description{
    position: relative;
    left: 230px;
    top: -160px;
    font-size: 15px;
}

.size{
    position: relative;
    left: 230px;
    top: -150px;
    font-size: 15px;
}

.cart{
    position: absolute;
    left: 740px;
    top: 15px;
    width: 90px;
    font-size: 18px;
    background-color: mediumvioletred;
    color: #fff;
    border-radius: 8px;
}

.delbtn{
    height: 35px;
    width: 80px;
    font-size: 13px;
    position: relative;
    left: 230px;
    top: -130px;
    background-color: #660066;
    color: #fff;
    border-radius: 8px;
}

.wishbtn{
    height: 35px;
    width: 120px;
    font-size: 11px;
    position: relative;
    left: 330px;
    top: -165px;
    background-color: #660066;
    color: #fff;
    border-radius: 8px;
}


#price{
    position: relative;
    left: 680px;
    top: -175px;
}

#snackbar,#snackbar1 {
    visibility: hidden;
    min-width: 250px;
    margin-left: -125px;
    background-color: #333;
    color: #fff;
    text-align: center;
    border-radius: 2px;
    padding: 16px;
    position: fixed;
    z-index: 1;
    left: 50%;
    bottom: 30px;
    font-size: 17px;
}

#snackbar.show,#snackbar1.show {
    visibility: visible;
    -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
    animation: fadein 0.5s, fadeout 2.5s 4.5s;
}

@-webkit-keyframes fadein {
    from {bottom: 0; opacity: 0;} 
    to {bottom: 30px; opacity: 1;}
}

@keyframes fadein {
    from {bottom: 0; opacity: 0;}
    to {bottom: 30px; opacity: 1;}
}

@-webkit-keyframes fadeout {
    from {bottom: 30px; opacity: 1;} 
    to {bottom: 0; opacity: 0;}
}

@keyframes fadeout {
    from {bottom: 30px; opacity: 1;}
    to {bottom: 0; opacity: 0;}
}
        </style>
    </head>
    <body>
        <div>
            <%@include file="NewHeader1.jsp" %>
        </div>
        <form name="form3">
        <div class="shopping-cart">
            <div class="title">Wishlist</div>
           
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
		rs = st.executeQuery("select * from Wishlist");
                while(rs.next())
                {
        %>
        
        <div class="image"><img src="<%= rs.getString(1)%>" width="20%"></div>
        <div class="brand"><%= rs.getString(3)%></div>
        <div class="description"><%= rs.getString(4)%></div>
        <div class="size">Size:&nbsp;<%=rs.getString(8)%></div>
        <button class="delbtn" onclick="delItem(<%=rs.getString(6)%>)">Remove</button>
        <button class="wishbtn" onclick="cartItem(<%=rs.getString(6)%>)">Move to Cart</button>
        <div><input type="text" id="price" value="<%= rs.getString(5)%>"/></div>
        <div id="snackbar">Removed from Wishlist</div>
        <div id="snackbar1">Moved to Cart</div>
        
        <%      }
            }
            catch(Exception e)
            {
                pw.println(e);
            }
        %>
        <button class="cart"><a style="text-decoration: none" href="Cart.jsp">Cart</a></button>
        </div>
        </form>
    </body>
    
    <script type="text/javascript">
        function delItem(Id){
            var f2 = document.form3;
            f2.method="post";
            f2.action='http://localhost:8080/LanvinF/DeleteItemW?Id='+Id;
            f2.submit();
            
            var x = document.getElementById("snackbar");
            x.className = "show";
            setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
        }
function cartItem(Id){
        var f2 = document.form3;
        f2.method="post";
        f2.action='http://localhost:8080/LanvinF/WishToCart?Id='+Id;
        f2.submit();
        
        var x = document.getElementById("snackbar1");
        x.className = "show";
        setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
} 

    </script>
</html>
