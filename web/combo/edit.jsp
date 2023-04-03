<%-- 
    Document   : edi
    Created on : Mar 9, 2023, 1:21:26 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edit Combo!</h1>
        <form method="post" action="EditCombo">
            <input type="hidden" name="id" value="${c.id}">
            <label>Name: </label><input type="text" value="${c.name}" name="name" class="form-control"><!-- comment -->
            <input class="btn btn-primary" type="submit" value="Update">
        </form>
    </body>
</html>
