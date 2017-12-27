<%-- 
    Document   : SearchBox1
    Created on : Oct 20, 2017, 6:22:43 PM
    Author     : chesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .search-box-wrapper {
                position: absolute;
                top:35px;
                right: 150px;
    display: inline-flex;
    font-size: 20px;
}

.search-box-input {
    font-size: inherit;
    border: 0.2em solid thistle;
    border-radius: 0.5em 0 0 0.5em;
    padding: 0.2em 0.5em;
    outline: 0;
}

.search-box-input:hover,
.search-box-input:focus {
    border-color: thistle;
}

.search-box-button {
    font-size: inherit;
    border: 0.2em solid thistle;
    border-radius: 0 0.5em 0.5em 0;
    background-color: thistle;
    border-left: 0;
    padding: 0 0.75em;
    color: #000;
    font-weight: bold;
    outline: 0;
    cursor: pointer;
}

.search-box-button:hover,
.search-box-button:focus {
    border-color: thistle;
    background-color: thistle;
}

#bag{
    position: absolute;
    top:0px;
    right: -80px;
}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="search-box-wrapper">
            <input type="text" placeholder="Search..." class="search-box-input">
            <button class="search-box-button">&#128269;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</button>
            <div>
                <a href="Wishlist.jsp"><%@include file="Heart.jsp" %></a>
            </div>
            <a href="Cart.jsp"><i id="bag" class="fa fa-shopping-bag" style="font-size:36px;"></i></a>
        </div>

    </body>
</html>
