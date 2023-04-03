<%-- 
    Document   : map
    Created on : Mar 9, 2023, 1:21:46 AM
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
        <h1>Add combo in to curriculum!</h1>
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
        <form action="MapCombo" method="post">
            <input type="hidden" name="curiId" value="${cur.id}">
            <label>Combo</label>
            <select name="comboId">
                <c:forEach var="c" items="${clist}">
                    <option value="${c.id}">${c.name}</option>
                </c:forEach>
            </select>
            <input type="submit" value="Add" >
        </form>
    </body>
</html>
