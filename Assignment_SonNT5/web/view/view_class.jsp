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
                                                <c:forEach items="${requestScope.cls}" var="c">
                                                    <tr>
                                                        <td>
                                                            <form action="view_class" method="POST">
                                                                <input type="submit" value="${c.id}" name="id_class"></a>   
                                                            </form>                                                   
                                                        </td>
                                                    </tr>    
                                                </c:forEach>
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
                                <c:if test="${requestScope.listSt ne null}">
                                    <c:forEach items="${requestScope.listSt}" var="st">
                                        <tr>
                                            <td></td>
                                            <td>${st.id}</td>
                                            <td>${st.name}</td>
                                            <td>${st.gender}</td>
                                            <td>${st.address}</td>
                                            <td>${st.dob}</td>
                                        </tr>
                                    </c:forEach>
                                </c:if>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
