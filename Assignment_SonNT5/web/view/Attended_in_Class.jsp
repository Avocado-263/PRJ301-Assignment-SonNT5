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
        </div>
        <table class="sortable">
            <h2><span>... then see student list of (Class)</span></h2>
            <thead>
                <tr>
                    <th>Index</th>
                    <th>Member</th>
                    <th>Code</th>
                    <th>Surname</th>
                    <th>Middle name</th>
                    <th>Given name</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>

                    <td>
                        <a href="">KienNAHE130771</a>
                    </td>
                    <td>HE130771</td>
                    <td>Nguyễn</td>
                    <td>Anh</td>
                    <td>Kiên</td>
                    <td><input type="radio" name="check"> Attended</td>
                    <td><input type="radio" name="check"> Absent</td>
                </tr>
            </tbody>
        </table>
        <br>
        <input type="submit" value="Save" name="Save" />
    </body>
</html>
