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
    </head>
    <body>
        <img src="../../temp/Du-hoc-tai-University-of-Ottawa-Nen-giao-duc-hien-dai-cung-co-so-vat-chat-an-tuong-2-1536x863.jpg" alt=""/>
        <img src="../../temp/istockphoto-1221128440-612x612.jpg" alt=""/>
        <form name="login" method="POST">
            <div>
                <table border="1">
                    <tr>
                        <td>User: </td>
                        <td><input type="text" name="user" ></td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td><input type="password" name="password" ></td>
                    </tr>
                    <tr>
                        <input type="submit" value="Login"/>
                    </tr>
                </table>
            </div>
        </form>
    </body>
</html>
