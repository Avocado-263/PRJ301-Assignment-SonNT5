<%-- 
    Document   : Schedule
    Created on : Jun 20, 2022, 7:46:20 AM
    Author     : thanh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Schedule</title>
        <link href="css/style_schedule.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div>
            <div class="title">
                <img class="img" src="temp/istockphoto-1221128440-612x612.jpg" alt=""/>
                <h1>
                    <span>University Academic Portal</span>
                </h1>
                <div id="User">
                    <span>${requestScope.account.user}</span> | <a href="login">logout</a>
                </div>
            </div>
            <div>
                <form  action="schedule" method="post">
                    <div>
                        <h2>Activities for
                            <span id="idStudent"> Name (ID)</span>
                        </h2>
                        <div id="ghichu">
                            <p id="note">
                                Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...<br>
                                Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..<br>
                                Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...<br>
                                Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..<br>
                            </p>
                        </div>
                        <table class="time_table">                                              
                            <thead>
                                <tr>
                                    <th>
                                        <span><strong>Year</strong></span>
                                        <select name="Year">
                                            <option selected="selected" value="">2015</option>
                                        </select>
                                        <br>    
                                        <span><strong>Week</strong></span>
                                        <select name="Week">
                                            <option selected="selected" value="">A</option>
                                            <option selected="selected" value="">B</option>
                                            <option selected="selected" value="">C</option>
                                            <option selected="selected" value="">D</option>
                                            <option selected="selected" value="">E</option>
                                            <option selected="selected" value="">F</option>
                                        </select>
                                    </th>
                                    <th align="center">Mon</th>
                                    <th align="center">Tue</th>
                                    <th align="center">Wed</th>
                                    <th align="center">Thu</th>
                                    <th align="center">Fri</th>
                                    <th align="center">Sat</th>
                                    <th align="center">Sun</th>
                                </tr>
                                <tr>
                                    <th></th>
                                    <th align="center">20/06</th>
                                    <th align="center">21/06</th>
                                    <th align="center">22/06</th>
                                    <th align="center">23/06</th>
                                    <th align="center">24/06</th>
                                    <th align="center">25/06</th>
                                    <th align="center">26/06</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td align="center">Slot 1<br>(7:30-9:00) </td>
                                    <td align="center">ABC<br> at AL-A203<br>(<font color="Green">attended</font>)</td>
                                    <td align="center">-</td>
                                    <td align="center">DEF<br> at BE-B207<br>(<font color="red">absent</font>)<br></td>
                                    <td align="center">-</td>
                                    <td align="center">GHK<br> at DE-D215<br>(<font color="red">Not yet</font>)<br></td>
                                    <td align="center">-</td>
                                    <td align="center">-</td>
                                </tr>
                                <tr>
                                    <td align="center">Slot 2<br>(9:10-10:40) </td>
                                    <td align="center">-</td>
                                    <td align="center">-</td>
                                    <td align="center">ABC<br> at AL-A203<br>(<font color="Green">attended</font>)</td>
                                    <td align="center">DEF<br> at BE-B207<br>(<font color="red">absent</font>)<br></td>
                                    <td align="center">-</td>
                                    <td align="center">GHK<br> at DE-D215<br>(<font color="red">Not yet</font>)<br></td>
                                    <td align="center">-</td>
                                </tr>
                                <tr>
                                    <td align="center">Slot 3<br>(10:50-12:20) </td>
                                    <td align="center">ABC<br> at AL-A203<br>(<font color="Green">attended</font>)</td>
                                    <td align="center">-</td>
                                    <td align="center">-</td>
                                    <td align="center">-</td>
                                    <td align="center">DEF<br> at BE-B207<br>(<font color="red">absent</font>)<br></td>
                                    <td align="center">-</td>
                                    <td align="center">GHK<br> at DE-D215<br>(<font color="red">Not yet</font>)<br></td>
                                </tr>
                                <tr>
                                    <td align="center">Slot 4<br>(14:20-16:10) </td>
                                    <td align="center">-</td>
                                    <td align="center">DEF<br> at BE-B207<br>(<font color="red">absent</font>)<br></td>
                                    <td align="center">-</td>
                                    <td align="center">ABC<br> at AL-A203<br>(<font color="Green">attended</font>)</td>
                                    <td align="center">-</td>
                                    <td align="center">GHK<br> at DE-D215<br>(<font color="red">Not yet</font>)<br></td>
                                    <td align="center">-</td>
                                </tr>
                            </tbody>
                        </table>
                        <p>
                            <b>More note / Chú thích thêm</b>:
                        </p>
                        <div id="foot">
                            <ul>
                                <li>(<font color="green">attended</font>): Attended this activity / Tham gia hoạt động này</li>
                                <li>(<font color="red">absent</font>): Not attended this activity / Vắng mặt buổi này</li>
                                <li>(-): no data was given / chưa có dữ liệu</li>
                            </ul>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
