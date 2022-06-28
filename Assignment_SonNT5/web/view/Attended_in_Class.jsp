<%-- 
    Document   : Attended_in_Class
    Created on : Jun 20, 2022, 3:32:27 PM
    Author     : thanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/style_Attended_in_Class.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="title">
            <img class="img" src="../temp/istockphoto-1221128440-612x612.jpg" alt=""/>
            <h1>
                <span>University Academic Portal</span>
            </h1>
            <div id="User">
                <span>ID</span> | <a href="login" class="">logout</a>
            </div>
        </div>
        <table class="sortable">

            <h2><span>Check attdened of (Class)</span></h2>
            <thead>
                <tr>
                    <th class="row1">Index</th>
                    <th class="row1">ID</th>
                    <th class="row1">Name</th>
                    <th class="row1">Dob</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>

                    <td>ID 1</td>
                    <td>Name 1</td>
                    <td>1999-09-09</td>
                    <td><input type="radio" name="check" value="1"> Attended</td>
                    <td><input type="radio" name="check" value="0"> Absent</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>ID 2</td>
                    <td>Name 2</td>
                    <td>2000-01-01</td>
                    <td><input type="radio" name="check1"> Attended</td>
                    <td><input type="radio" name="check2"> Absent</td>
                </tr>
            </tbody>
        </table>
        <div>
            <input type="submit" value="Save" name="save" class="save" />
        </div>
        <br>
    </body>
</html>
