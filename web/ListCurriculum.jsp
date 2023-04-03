<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ListCurriculum
    Created on : Jan 30, 2023, 6:24:48 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Curriculum</title>
        <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> comment -->
        <!--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>-->
   	<link rel="stylesheet" href="css/style.css">

    </head>
    <body>

        <jsp:include page="./header.jsp"/>
        <form method="get" action="ListCurriculum">
            <table class="auto-style1" style="margin: 15px;">
                <tr>
                    <td class="auto-style2" style="text-align: right">
                        <label class="form-check-label" for="inlineFormCheck">
                            Enter curriculum: 
                        </label>
                    </td>
                    <td>
                        <div class="form-inline">
                            <div class="input-group">
                                <select name="type-search" id="ddlSeachOn" class="text form-select rounded ml-2 mr-2" style="width:110px;height: auto; font-size: inherit">
                                    <option value="1" ${param["type-search"]==1?"selected":""}>Code</option>
                                    <option value="2"  ${param["type-search"]==2?"selected":""}>Name</option>
                                </select>
                                <input name="search"  type="text" id="txtKeyword" value="${param["search"]}" class="form-control rounded mr-2" style="width:267px;font-size: inherit; margin: 0 10px;" />
                                <span class="input-group-btn">
                                    <input type="submit"  value="Search" id="btnSearch" class="btn btn-success" style="width:100px;" />
                                </span>
                            </div>
                        </div>
                    </td>
                </tr>

            </table>
        </form>
        <c:if test="${sessionScope.roleName == 'admin'}">
            <a  style="margin: 15px;" class="btn btn-primary" href="CurriculumAdd">Add new</a>
        </c:if>
        <table class="table table-bordered">
            <thead class="thead-primary">
                <tr>
                    <th>Id</th>
                    <th>Code</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>DecisionNo</th>
                    <th>Total Credit</th>
                        <c:if test="${sessionScope.roleName == 'admin'}">
                        <th>Status</th>
                        <th>Change Status</th>
                        <th>Edit</th>
                        <th>Delete</th>

                    </c:if>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="c" items="${cList}">
                    <tr>
                        <td>${c.id}</td>
                        <td>${c.code}</td>
                        <td><a href="CurriculumDetails?id=${c.id}">${c.name}</a></td>
                        <td>${c.description}...</td>
                        <td>${c.decisionNo}</td>
                        <td>${c.totalCredit}</td> 
                        <c:if test="${sessionScope.roleName == 'admin'}">

                            <td>${c.active}</td>   
                            <c:if test="${!c.active}">
                                <td><a href="CurriculumChangeStatus?id=${c.id}&status=1" class="btn btn-primary"> Active</a></td>           
                            </c:if>
                            <c:if test="${c.active}">
                                <td><a href="CurriculumChangeStatus?id=${c.id}&status=0" class="btn btn-primary"> Inactive</a></td>           
                            </c:if>
                            <td><a href="CurriculumUpdate?id=${c.id}" class="btn btn-warning"> Edit</a></td>           
                            <td><button  onclick="cfDelete(${c.id})" class="btn btn-danger"> Delete</button></td>
                        </c:if>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <script >
            function cfDelete(x) {
                if (confirm("Are you sure to delete this record!")) {
                    window.location.href = 'CurriculumDelete?id=' + x;
                }
            }
        </script>
        <c:if test="${param['index']==null }">   
            <c:set var = "index" scope = "page" value = "1"/>
        </c:if>
        <c:if test="${param['index']!=null}">
            <c:set var = "index" scope = "page" value = "${param['index']}"/>
        </c:if>
        <nav aria-label="...">
            <ul class="pagination">
                <li class="page-item <c:if test="${index==1}">disabled
                    </c:if>">
                    <a class="page-link" href="ListCurriculum?index=${index-1}" >Previous</a>
                </li>
                <li class="page-item active">
                    <a class="page-link" href="ListCurriculum?index=${index}">${index}</a>
                </li>
                <li class="page-item <c:if test="${index==numberPage+1}">disabled　
                    </c:if>">
                    <a class="page-link" href="ListCurriculum?index=${index+1}">Next</a>
                </li>
            </ul>
        </nav>

    </body>
</html>
