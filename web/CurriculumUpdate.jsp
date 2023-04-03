<%-- 
    Document   : CurriculumUpdate
    Created on : Jan 30, 2023, 4:18:17 PM
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
        <h1 style="text-align: center;">Edit Curriculum</h1>
        <div style="display: flex; justify-content: center">
            <form method="post" action="CurriculumUpdate" style="padding: 5px; width: 50%">
                <label style="font-weight: bold">Curriculum Code:</label>
                <input type="hidden" name="id" value="${c.id}" class="form-control">
                <input type="text" name="code" required="" value="${c.code}" class="form-control">
                <label style="font-weight: bold">Name:</label>
                <input type="text" name="name" required value="${c.name}" class="form-control">
                <label style="font-weight: bold">Decision No:</label>
                <input type="date" name="decision" required value="${c.decisionNo}" class="form-control">
                <label style="font-weight: bold">Description:</label>
                <textarea style="height: 250px"  name="desc" class="form-control">${c.description}</textarea>
                <label style="font-weight: bold">Total Credit:</label>
                <input type="text" name="credit" readonly="" value="${c.totalCredit}" class="form-control">
                <button style="margin: 10px" type="submit"  class="btn btn-primary">Update</button>
            </form>
        </div>
    </body>
</html>
