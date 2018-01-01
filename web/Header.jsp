<%-- 
    Document   : Header
    Created on : Oct 16, 2017, 7:57:47 PM
    Author     : chesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            
.headerf ul{
    list-style-type: none;
    left: 160px;
    top: 0;
    right: 160px;
    padding: 0;
    overflow: visible;
     background-color: #ffccff;
    position: fixed;
    width: 100%;
}

.headerf li{
    float: left;
}

.headerf li a, .dropbtn{
    display: block;
    color: black;
    text-align: center;
    padding: 24px 26px;
    text-decoration: none;
}

.headerf li a:hover:not(.active), .dropdown:hover .dropbtn{
    background-color: palevioletred;
}

.headerf li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #ffccff;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #ffccff}

.dropdown:hover .dropdown-content {
    display: block;
}

        </style>
        <title></title>
    </head>
    <body>
        <div class="headerf">
	<ul>
		<li><a class="active" href="Home.jsp" style="font-size:25px;color:mediumvioletred;weight:bold">LANVIN</a></li>
		<li class="dropdown">
			<a href="javascript:void(0)" class="dropbtn">Men</a>
			<div class="dropdown-content">
                        <a href="Shop.jsp?cat=TS">T-Shirts</a>
      			<a href="Shop.jsp?cat=CasualS">Casual Shirts</a>
      			<a href="Shop.jsp?cat=FormalS">Formal Shirts</a>
      			<a href="Shop.jsp?cat=Sweater">Sweaters</a>
      			<a href="Shop.jsp?cat=Jacket">Jackets</a>
			</div>
		</li>
		<li class="dropdown">
			<a href="javascript:void(0)" class="dropbtn">Women</a>
			<div class="dropdown-content">
				<a href="Shop.jsp?cat=KS">Kurtas & Suits</a>
				<a href="Shop.jsp?cat=DJ">Dresses & Jumpsuits</a>
				<a href="Shop.jsp?cat=JJ">Jeans & Jeggings</a>
				<a href="Shop.jsp?cat=Shrug">Shrugs</a>
			</div>
                        
		</li>
		<li class="dropdown">
			<a href="javascript:void(0)" class="dropbtn">Kids</a>
			<div class="dropdown-content">
				<a href="Shop.jsp?cat=TSK">T-Shirts</a>
				<a href="Shop.jsp?cat=Dress">Dresses</a>
				<a href="Shop.jsp?cat=Indian">Indian Wear</a>
				<a href="Shop.jsp?cat=Dungarees">Dungarees</a>
				<a href="Shop.jsp?cat=Jeans">Jeans & Trousers</a>
			</div>
		</li>
		<li class="dropdown">
			<a href="javascript:void(0)" class="dropbtn">Home&Living</a>
			<div class="dropdown-content">
				<a href="Shop.jsp?cat=Bed">Bedsheets</a>
				<a href="Shop.jsp?cat=Towel">Bath Towels</a>
				<a href="Shop.jsp?cat=Clock">Clocks</a>
				<a href="Shop.jsp?cat=Lamp">Lamps</a>
			</div>
		</li>
		<li><a href="http://localhost:8080/LanvinF/About.jsp">About</a></li>
		<li>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</li>
                <%
                    HttpSession s = request.getSession(false);
                    if( s!= null){
                        String n = (String)s.getAttribute("username");
                        if( n!= null){
                %>
                <li><a href="http://localhost:8080/LanvinF/LogOutServlet">Sign out</a>
                <%
                        }
                        else if(n == null){
                %>
                <li><a href="http://localhost:8080/LanvinF/LoginPage.jsp">Log in</a>
                <%
                            session.invalidate();
                        }
                    }
                    else{
                %>
                <li><a href="http://localhost:8080/LanvinF/LoginPage.jsp">Log in</a>
                <%
                    }
                %>
		
		<li><a href="http://localhost:8080/LanvinF/RegistrationPage.jsp">Sign Up</a>
	</ul>
        </div>
    </body>
</html>

