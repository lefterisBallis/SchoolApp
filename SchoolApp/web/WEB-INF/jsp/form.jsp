<%-- 
    Document   : form
    Created on : Sep 25, 2019, 9:02:05 PM
    Author     : Lefteris
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <spring:form modelAttribute="trainer" action="showform.htm" method="post">
            <table>
                <tr>
                    <td><spring:label path="firstname"> First Name</spring:label></td>
                    <td><spring:input path="firstname" /></td>
                </tr>
                <tr>
                    <td><spring:label path="lastname">Last Name</spring:label></td>
                    <td><spring:input path="lastname" /></td>
                </tr>
                <tr>
                    <td><spring:label path="subject">Subject</spring:label></td>
                    <td><spring:input path="subject" /></td>
                </tr>
               
            </table>
                <input type="submit" value="Submit">
        </spring:form>
    </body>
</html>
