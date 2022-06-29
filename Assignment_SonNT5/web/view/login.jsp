<%-- 
    Document   : login
    Created on : Jun 14, 2022, 1:03:18 AM
    Author     : thanh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link href="css/style_login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div>
            <img class="img" src="temp/istockphoto-1221128440-612x612.jpg" alt=""/>
        </div>
        <div class="login-form">
            <form action="login" method="post">
                <h2 class="text-center">Login</h2>       
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Username" required="required" name="username">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" required="required" name="password">
                </div>
<!--                <div>
                    <label>
                        <select name="role">
                            <option value="1">Teacher</option>
                            <option value="2">Student</option>
                        </select>
                    </label>
                </div>-->
                <div class="form-group">
                    <input type="submit" value="Log in" class="btn btn-primary btn-block">
                </div>        
            </form>
        </div>
    </form>     
</body>
</html>
