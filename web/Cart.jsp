<%-- 
    Document   : CartTry
    Created on : Dec 13, 2017, 8:38:24 AM
    Author     : chesh
--%>

<%--<%@page import="javax.lang.model.element.Element"%>--%>
<%--<%@page import="javax.swing.text.Document"%>--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.nodes.Element"%>
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

.checkout{
    position: absolute;
    left: 610px;
    top: 12px;
    width: 200px;
    background-color: mediumvioletred;
    color: #fff;
    border-radius: 8px;
    display: inline-block;
    transition: all 0.5s;
    cursor: pointer;
    margin: 5px;
}

.checkout span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.checkout span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.checkout:hover span {
  padding-right: 25px;
}

.checkout:hover span:after {
  opacity: 1;
  right: 0;
}

.wishlist{
    position: absolute;
    left: 530px;
    top: 18px;
    background-color: mediumvioletred;
    color: #fff;
    border-radius: 8px;
}

.image{
    position: relative;
    top: 30px;
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

#quantity{
    position: relative;
    left: 580px;
    top: -230px;
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
<form name="form2">
        <div class="shopping-cart">
            <div class="title">Shopping Bag</div>
            
            <%
            int Total=0, ToPay=0, Tax=0;
            PrintWriter pw = response.getWriter();
            Connection con;
            Statement st; 
            PreparedStatement st1;
            ResultSet rs;
            try
            {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineShopping","root","cheshta");
		st = con.createStatement();
                rs = st.executeQuery("select count(*) from Cart");
                int item = 0;
                while(rs.next()){
                    item = rs.getInt(1);
                }
                    if(item == 0){
            %>
            <h1 style='font-size:36px; text-align: center;'>Your Shopping Cart is empty.</h1>
            <h2 style="font-size:26px; text-align: center;">Your Shopping Cart lives to serve. Give it purpose.</h2>
            <h3 style="font-size:20px; text-align: center;">Continue shopping on <a href="Home.jsp">Lanvin Homepage</a> , or visit your <a href="Wishlist.jsp">Wishlist.</a></h3>
            <%
                    }
		rs = st.executeQuery("select * from Cart");
                while(rs.next())
                {
                    ToPay = ToPay + rs.getInt(5);
                    Total = Total + rs.getInt(7);
                    Tax = ToPay/18;
            %>
        
        <div class="image"><img src="<%= rs.getString(1)%>" width="20%"></div>
        <div class="brand"><%= rs.getString(3)%></div>
        <div class="description"><%= rs.getString(4)%></div>
        <div class="size">Size:&nbsp;<%=rs.getString(8)%></div>
        <button class="delbtn" onclick="delItem(<%=rs.getString(6)%>)">Remove</button>
        <button class="wishbtn" onclick="wishItem(<%=rs.getString(6)%>)">Move to Wishlist</button>
        <div id="snackbar">Removed from Cart</div>
        <div id="snackbar1">Moved to Wishlist</div>
        
        <div><input type="text" id="price" value="<%= rs.getString(5)%>"/></div>

        <% 
        }
            st1 = con.prepareStatement("insert into OrderF values(?,?,?)");
            st1.setInt(1,Total);
            st1.setInt(2,ToPay);
            st1.setInt(3,Tax);

            boolean ctr = st1.execute();
        }
            catch(Exception e)
            {
                pw.println(e);
            }

        %>
        
        
        
        <button class="wishlist"><a style="text-decoration: none" href="Wishlist.jsp">Wishlist</a></button>
        <button class="checkout"><a style="text-decoration: none" href="Order.jsp"><span>Proceed to Checkout</span></a></button>
        </div>
</form>
    </body>
    
    <script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
    <script  type="text/javascript">

    $(function () {
    $('.add').on('click',function(){
        var $qty=$(this).closest('p').find('.qty');
        var currentVal = parseInt($qty.val());
        if (!isNaN(currentVal)) {
            $qty.val(currentVal + 1);
        }
    });
    $('.minus').on('click',function(){
        var $qty=$(this).closest('p').find('.qty');
        var currentVal = parseInt($qty.val());
        if (!isNaN(currentVal) && currentVal > 0) {
            $qty.val(currentVal - 1);
        }
    });
});

    function delItem(Id){
        var f1 = document.form2;
        f1.method="post";
        f1.action='http://localhost:8080/LanvinF/DeleteItemC?Id='+Id;
        f1.submit();
            
        var x = document.getElementById("snackbar");
        x.className = "show";
        setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
    }
        
    function wishItem(Id){
        var f1 = document.form2;
        f1.method="post";
        f1.action='http://localhost:8080/LanvinF/CartToWish?Id='+Id;
        f1.submit();
        
        var x = document.getElementById("snackbar1");
        x.className = "show";
        setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
    } 
    
    function update(Id){
        var qty = document.getElementsByName("Qty")[0].value;
        var f1 = document.form2;
        f1.method="post";
        f1.action='http://localhost:8080/LanvinF/UpdateCart?Id='+Id+"&qty="+qty;
        f1.submit();
    }

</script>
    
</html>
