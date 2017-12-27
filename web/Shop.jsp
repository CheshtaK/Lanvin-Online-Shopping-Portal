<%-- 
    Document   : Shop
    Created on : Dec 25, 2017, 10:56:40 PM
    Author     : chesh
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
    <head>
        <style>
.card {
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    max-width: 170px;
    margin: auto;
    text-align: center;
}

.title {
    color: grey !important;
    font-size: 14px;
}

button {
    border: none;
    outline: 0;
    display: inline-block;
    padding: 8px;
    color: white;
    background-color: #000;
    text-align: center;
    cursor: pointer;
    width: 100%;
    font-size: 12px;
    
     -webkit-border-radius: 20px;
   -moz-border-radius: 20px;
   border-radius: 20px;
}

button:hover, a:hover {
    opacity: 0.7;
}

img{
    opacity: 1;
    display: block;
    width: 100%;
    transition: .5s ease;
    backface-visibility: hidden;
}

.favorites{
    transition: .5s ease;
    opacity: 0;  
    position: relative;
    top: -250px;
    left: 90px;
    transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%)
}

.card:hover img {
  opacity: 0.3;
}

.card:hover .favorites {
  opacity: 1;
}

.fa {
    font-size: 50px;
    cursor: pointer;
    user-select: none;
}

.styled-select {
   background: url(http://i62.tinypic.com/15xvbd5.png) no-repeat 96% 0;
   height: 35px;
   overflow: hidden;
   width: 79px;
}
.styled-select select {
   background: transparent;
   border: none;
   font-size: 16px;
   color: white;
   height: 35px;
   padding: 5px; 
   width: 105px; 
}

.rounded {
   -webkit-border-radius: 20px;
   -moz-border-radius: 20px;
   border-radius: 20px;
}

.black   { background-color: #000;}

#First{
    position: absolute;
    top:130px;
    left: 350px;
}

#Second{
    position: absolute;
    top:130px;
    left: 600px;
}

#Third{
    position: absolute;
    top:130px;
    left:850px;
}

#Fourth{
    position: absolute;
    top: 130px;
    left: 1100px;
}

#Fifth{
    position: absolute;
    top: 660px;
    left: 350px;
}

#Sixth{
    position: absolute;
    top: 660px;
    left: 600px;
}

#Seventh{
    position: absolute;
    top: 660px;
    left: 850px;
}

#Eighth{
    position: absolute;
    top: 660px;
    left: 1100px;
}
#price{
    font-size: 12px;
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
    -webkit-animation: fadein 0.5s, fadeout 3.5s 5.5s;
    animation: fadein 0.5s, fadeout 3.5s 5.5s;
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
        
        <div>
            <%@include file="SearchBox1.jsp" %>
        </div>
        <form name="form1">
        <%
                String cat = request.getParameter("cat");
                try
                {
                    Connection con;
                    Statement st;
                    ResultSet rs;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineShopping","root","cheshta");
                    st = con.createStatement();
                    rs = st.executeQuery("select * from Shop where Category='"+cat+"'");
                while(rs.next())
                {
                %>
                <div class="card" id="<%=rs.getString(9)%>">
                    
                    <img src="<%=rs.getString(2)%>" alt="TShirt">
                    
                    <h1><%=rs.getString(4)%></h1>
                    <p class="title"><%=rs.getString(5)%></p>
                    <p id="price">Rs.<%=rs.getString(6)%>  <strike>Rs.<%=rs.getString(7)%></strike> <text style="color:red"><%=rs.getString(8)%>% off</text></p>
                    <p class="favorites"><i onclick="addWish(<%=rs.getString(1)%>);" class="fa fa-heart" style="font-size:16px;color:red"></i></p>    
                    <div id="snackbar">Added to Wishlist</div>
                    <div id="snackbar1">Added to Cart</div>
                        <table style="width:170px">
                        <tr>
                        <td width="50%"><button onclick="addCart(<%=rs.getString(1)%>);">Bag</button></td>
                        <td>
                        <div  class="styled-select black rounded">
                            <% if(rs.getString(3).equals("TSK")||rs.getString(3).equals("Jeans")){ %>    
                            <select name="size" id="<%=rs.getString(1)%>">
                                        <option value="7-8Y">7-8Y</option>
                                        <option value="8-9Y">8-9Y</option>
                                        <option value="9-10Y">9-10Y</option>
                                        <option value="10-11Y">10-11Y</option>
                            </select>
                                 
                            <% }
                                else if(rs.getString(3).equals("JJ")){%>
                            <select name="size" id="<%=rs.getString(1)%>">
                                        <option value="26">26</option>
                                        <option value="28">28</option>
                                        <option value="30">30</option>
                                        <option value="32">32</option>
                            </select>
                                        
                            <% }
                                else if(rs.getString(3).equals("Dress")||rs.getString(3).equals("Indian")||rs.getString(3).equals("Dungarees")){%>
                            <select name="size" id="<%=rs.getString(1)%>">
                                        <option value="3-4Y">3-4Y</option>
                                        <option value="4-5Y">4-5Y</option>
                                        <option value="5-6Y">5-6Y</option>
                                        <option value="6-7Y">6-7Y</option>
                            </select>
                                        
                            <% }
                                else if(rs.getString(3).equals("Shrug")||rs.getString(3).equals("DJ")||rs.getString(3).equals("KS")||rs.getString(3).equals("Jacket")||rs.getString(3).equals("Sweater")||rs.getString(3).equals("FormalS")||rs.getString(3).equals("CasualS")||rs.getString(3).equals("TS")){%>
                            <select name="size" id="<%=rs.getString(1)%>">
                                        <option value="S">S</option>
                                        <option value="M">M</option>
                                        <option value="L">L</option>
                                        <option value="XL">XL</option>
                            </select>
                            <% }
                                else if(rs.getString(3).equals("Bed")||rs.getString(3).equals("Lamp")||rs.getString(3).equals("Towel")||rs.getString(3).equals("Clock")){%>
                            <select name="size" id="<%=rs.getString(1)%>">
                                        <option value="S">S</option>
                                        <option value="M">M</option>
                                        <option value="L">L</option>
                            </select> 
                            <% } %>
                        </div>
                        </td>
                        </tr>
                        </table>
                </div>                              
                <%
                }
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                %>         
        </form>
    </body> 
    
    <script language="javascript">
            function addCart(Id){
                var sel = document.getElementById(Id);
                var selValue = sel.options[sel.selectedIndex].value; 
                var f=document.form1;
                f.method="post";
                f.action='http://localhost:8080/LanvinF/AddToCart?Id='+Id+'&Size='+selValue;
                f.submit();
                
                var x = document.getElementById("snackbar1")
                x.className = "show";
                setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
            }
            function addWish(Id){
                var sel = document.getElementById(Id);
                var selValue = sel.options[sel.selectedIndex].value;
                var f=document.form1;
                f.method="post";
                f.action='http://localhost:8080/LanvinF/AddToWishlist?Id='+Id+'&Size='+selValue;
                f.submit();
            
                var x = document.getElementById("snackbar")
                x.className = "show";
                setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
            }
    </script>
</html>
