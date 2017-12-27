<%-- 
    Document   : NewHeader1
    Created on : Oct 20, 2017, 6:19:54 PM
    Author     : chesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
#heading{
    position: absolute;
    top: 25px;
    font-family: "Helvetica", sans-serif;
    text-height: 10px;
    color: mediumvioletred;
}

.w3-sidebar{
    position: absolute;
    left: 20px;
}

</style>
<body class="w3-content" style="max-width:1200px">


<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:250px" id="mySidebar">
  <div class="w3-container w3-display-container w3-padding-16">
    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
    <h1 id="heading"><b><a style="text-decoration: none" href="Home.jsp">LANVIN</a></b></h1>
  </div>
    
    
  <div id="menu" class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
    
      
      <a onclick="men()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align">Men <i class="fa fa-caret-down"></i>
    </a>
      <div id="men1" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="Shop.jsp?cat=TS" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>T-Shirts</a>
      <a href="Shop.jsp?cat=CasualS" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Casual Shirts</a>
      <a href="Shop.jsp?cat=FormalS" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Formal Shirts</a>
      <a href="Shop.jsp?cat=Sweater" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Sweaters</a>
      <a href="Shop.jsp?cat=Jacket" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Jackets</a>
    </div>
    
      
      <a onclick="women()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align">Women <i class="fa fa-caret-down"></i>
    </a>
      <div id="women1" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="Shop.jsp?cat=KS" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Kurtas & Suits</a>
      <a href="Shop.jsp?cat=DJ" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Dresses & Jumpsuits</a>
      <a href="Shop.jsp?cat=JJ" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Jeans & Jeggings</a>
      <a href="Shop.jsp?cat=Shrug" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Shrugs</a>
    </div>
    
      
      <a onclick="kids()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align">
      Kids <i class="fa fa-caret-down"></i>
    </a>
      <div id="kids1" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="Shop.jsp?cat=TSK" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>T-Shirts</a>
      <a href="Shop.jsp?cat=Dress" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Dresses</a>
      <a href="Shop.jsp?cat=Indian" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Indian Wear</a>
      <a href="Shop.jsp?cat=Dungarees" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Dungarees</a>
      <a href="Shop.jsp?cat=Jeans" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Jeans & Trousers</a>
    </div>
    
      
      <a onclick="hnl()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align">Home&Living <i class="fa fa-caret-down"></i>
    </a>
    <div id="hnl1" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="Shop.jsp?cat=Bed" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Bedsheets</a>
      <a href="Shop.jsp?cat=Towel" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Bath Towels</a>
      <a href="Shop.jsp?cat=Clock" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Clocks</a>
      <a href="Shop.jsp?cat=Lamp" class="w3-bar-item w3-button"><i class="fa fa-caret-right w3-margin-right"></i>Lamps</a>
    </div>
  </div>
  
    
    
  <a href="http://localhost:8080/LanvinF/About.jsp" class="w3-bar-item w3-button w3-padding">About</a> 
  <a href="http://localhost:8080/LanvinF/Contact.jsp" class="w3-bar-item w3-button w3-padding">Contact</a> 
  <a href="LoginPage.jsp" class="w3-bar-item w3-button w3-padding">Log In</a>
  <a href="RegistrationPage.jsp" class="w3-bar-item w3-button w3-padding">Sign Up</a>
</nav>


<header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
  <div class="w3-bar-item w3-padding-24 w3-wide">LANVIN</div>
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></a>
</header>


<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>


<script>
function men() {
    var x = document.getElementById("men1");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

function women() {
    var x = document.getElementById("women1");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

function kids() {
    var x = document.getElementById("kids1");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

function hnl() {
    var x = document.getElementById("hnl1");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

// Click on the "Jeans" link on page load to open the accordion for demo purposes
document.getElementById("myBtn").click();


// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>

</body>
</html>


