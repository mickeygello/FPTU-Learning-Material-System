<%-- 
    Document   : deleteSubject
    Created on : Feb 4, 2023, 7:56:52 PM
    Author     : TUF GAMING
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import = "model.*" %>
<%@page import = "dal.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This function is updating. Sorry for the inconvenience</h1>
        <%
         Subject x = (Subject) request.getAttribute("x");
        %>
        <h2>Subject found:</h2>
        <h3>Code: <%=x.getSjCode()%> </h3>
        <h3>Name: <%=x.getSjName()%> </h3>
        <h3>Pre-Require: <%= x.getsPreRequire()%> </h3>  
        <h3>Credit: <%= x.getsCredit()%> </h3>
        <a href="delete?id=<%=x.getSjCode()%>"> Confirm to delete </a>
                    
    </body>
    
</html>

