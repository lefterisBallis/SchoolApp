<%-- 
    Document   : trainerList
    Created on : Sep 26, 2019, 7:21:35 PM
    Author     : Lefteris
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <th>id</th>
                <th>FirstName</th>
                <th>LastName</th>
                <th>Subject</th>
            </tr>
            <c:forEach items="${trainers}" var="tr">
                <tr>
                    <td>${tr.id}</td>
                    <td>${tr.firstname}</td>
                    <td>${tr.lastname}</td>
                    <td>${tr.subject}</td>
                </tr>

            </c:forEach>




        </table>


    </body>
</html>
