<%-- 
    Document   : CurriculumDetails
    Created on : Jan 30, 2023, 4:16:55 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"><!-- comment -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </head>
    <body>
        <jsp:include page="./header.jsp"/>

        <h1>Curriculum Details</h1>
        <table class="table table-bordered">
            <tr>
                <td>CurriculumCode:	</td>
                <td>${c.code}</td>
            </tr>
            <tr>
                <td>Name:	</td>
                <td>${c.name}</td>
            </tr>
            <tr>
                <td>Description:	</td>
                <td>${c.description}</td>
            </tr>
             <tr>
                <td>DecisionNo:	</td>
                <td>${c.decisionNo}</td>
            </tr>
            <tr>
                <td>Total Credit:	</td>
                <td>${c.totalCredit}</td>
            </tr>
        </table>

    </body>
</html>
