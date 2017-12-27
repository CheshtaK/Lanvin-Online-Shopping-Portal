<%-- 
    Document   : Heart
    Created on : Oct 20, 2017, 7:29:06 PM
    Author     : chesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .heart {
  width: 100px;
  height: 100px;
  position: absolute;
  left: 350px;
  top: 50%;
  transform: translate(-50%, -50%);
  background: url(https://cssanimation.rocks/images/posts/steps/heart.png) no-repeat;
  background-position: 0 0;
  cursor: pointer;
  animation: fave-heart 1s steps(28);
}
.heart:hover {
  background-position: -2800px 0;
  transition: background 1s steps(28);
}
@keyframes fave-heart {
  0% {
    background-position: 0 0;
  }
  100% {
    background-position: -2800px 0;
  }
}

        </style>
    </head>
    <body>
        <div class="heart"></div>
    </body>
</html>
