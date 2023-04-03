<%-- 
    Document   : add
    Created on : Mar 9, 2023, 1:21:19 AM
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
        <h1>Add Combo!</h1>
        <form method="post" action="AddCombo">
            <label>Name: </label><input type="text" name="name" class="form-control"><!-- comment -->
            <input class="btn btn-primary" type="submit" value="Add">
        </form>
    </body>
</html>
