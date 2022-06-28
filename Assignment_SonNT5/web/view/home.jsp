<%-- 
    Document   : Home
    Created on : Jun 27, 2022, 11:47:58 PM
    Author     : thanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/home.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="title">
            <img class="img" src="temp/istockphoto-1221128440-612x612.jpg" alt=""/>
            <h1>
                <span>University Academic Portal</span>
            </h1>
            <div id="User">
                <span>ID</span> | <a href="login">logout</a>
            </div>
        </div>
        <div class="button">
            <div><a href="home"  class="nut">Schedule</a></div>
            <div><a href="view_attended"  class="nut">View Attended</a></div>
        </div>
    </body>
</html>
