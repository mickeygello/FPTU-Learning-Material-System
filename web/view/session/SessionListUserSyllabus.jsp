<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container-fluid">
    <div class="table-wrap"  style="padding: 33px; display: flex; justify-content: center; margin-top: 70px">
        <table class="table">
            <thead style="background-color: #ebedeb">
                <tr>
                    <th>Topic</th>
                    <th>Learning Teaching Type</th>
                    <th>LO</th>
                    <th>ITU</th>
                    <th>Student Material</th>
                    <th>
                        <a>


                            Download
                        </a>
                    </th>
                    <th>Student Task</th>
                    <th>urls</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.listSession}" var="i">
                    <tr>
                        <td>${i.topic}</td>
                        <td>${i.learning_teaching_type}</td>
                        <td>${i.lO}</td>
                        <td>${i.iTU}</td>
                        <td>${i.studentMaterial}</td>

                        <td>
                            <a href="${pageContext.request.contextPath}/download?id=${i.sesid}">${i.download}</a>
                        </td>
                        <td>${i.studentTask}</td>
                        <td>${i.urls}</td>


                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<div class="float-end">
    <p style="color: blueviolet; font-weight: bold">Total LO: ${requestScope.count}</p>
</div>

