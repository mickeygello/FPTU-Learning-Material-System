<%-- 
    Document   : listbycid
    Created on : Mar 9, 2023, 1:21:57 AM
    Author     : dell
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List combo of Curriculum!</h1>
        <table border="1">
            <tbody>
                <tr>
                    <td>CurriCulum ID	</td>
                    <td>CurriCulum Code	</td>
                    <td>CurriCulum Name	</td>
                </tr>
                <tr>
                    <td>${cur.id}</td>
                    <td>${cur.code}</td>
                    <td>${cur.name}</td>
                </tr>
            </tbody>
        </table>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="c" items="${clist}">
                    <tr>
                        <td>${c.id}</td>
                        <td>${c.name}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
