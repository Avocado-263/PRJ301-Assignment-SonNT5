<%-- 
    Document   : Home
    Created on : Jun 27, 2022, 11:47:58 PM
    Author     : thanh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="css/home.css" rel="stylesheet" type="text/css"/>        
        <script>
            function redirect() {
                window.location.href = 'schedule';
            }
            function redirect1() {
                window.location.href = 'view_student';
            }
        </script>
    </head>
    <body>
        <form action="home" method="POST">
            <div class="title">
                <img class="img" src="temp/istockphoto-1221128440-612x612.jpg" alt=""/>
                <h1>
                    <span>University Academic Portal</span>
                </h1>
                <div id="User">
                    <span>${requestScope.account.user}</span> | <a href="login">logout</a>
                </div>
            </div>
            <div class="button">
                <div><input type="submit" value="schedule" class="nut" ></div>
                <div><input type="submit" value="View Student" class="nut" ></div>
            </div>
        </form>
    </body>
</html>
