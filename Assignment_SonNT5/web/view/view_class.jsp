<%-- 
    Document   : Menber_Classs
    Created on : Jun 20, 2022, 3:32:44 PM
    Author     : thanh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style_view_class.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="title">
            <img class="img" src="temp/istockphoto-1221128440-612x612.jpg" alt=""/>
            <h1>
                <span>University Academic Portal</span>
            </h1>
            <div id="User">
                <span>${requestScope.account.user}</span> | <a href="login" class="">logout</a>
            </div>
        </div>
        <table>
            <tbody>
                <tr>
                    <td valign="top">
                        <h3>Select a class ...<br><br></h3>
                        <table summary="Select a course">
                            <thead>
                                <tr>
                                    <th>Class</th>
                                </tr>
                            </thead>
                            <tbody> 
                                <tr>
                                    <td valign="top">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <a href="">ABC</a>(SE1634,start 09/05/2022)
                                                    </td>
                                                </tr>         
                                            </tbody>
                                        </table>
                                    </td>                                             
                                </tr>
                            </tbody>
                        </table>
                    </td>
                    <td valign="top">
                        <h3>... then see list student<br><br></h3>
                        <table>
                            <thead> 
                                <tr>
                                    <th>No.</th>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Gender</th>
                                    <th>Address</th>
                                    <th>Dob</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
