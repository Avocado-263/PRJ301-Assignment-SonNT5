<%-- 
    Document   : CheckAttendance
    Created on : Jun 20, 2022, 10:10:53 AM
    Author     : thanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Attendance</title>
        <link href="../css/style_viewAttendance.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="title">
            <img class="img" src="../temp/istockphoto-1221128440-612x612.jpg" alt=""/>
            <h1>
                <span>University Academic Portal</span>
            </h1>
        </div>
        <div>
            <form  action="" method="post">
                <div id="User">
                    <span>ID</span> | <a href="login" class="">logout</a>
                </div>
                <div>
                    <h2>Activities for Name (ID)</h2>
                    <table>
                        <tbody>
                            <tr>
                                <td valign="top">
                                    <h3>Select a course ...</h3>
                                    <table summary="Select a course">
                                        <thead>
                                            <tr>
                                                <th scope="col">Course</th>
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
                                    <h3>... then see report<br><br></h3>
                                    <table>
                                        <tbody>
                                            <tr>

                                            </tr>
                                        </tbody>
                                        <thead> 
                                            <tr>
                                                <th>No.</th>
                                                <th>Date</th>
                                                <th>Slot</th>
                                                <th>Room</th>
                                                <th>Lecturer</th>
                                                <th>Group Name</th>
                                                <th>Attedance status</th>
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
                                                <td><font color="">7</font></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
    </body>
</html>
