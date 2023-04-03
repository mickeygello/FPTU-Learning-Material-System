<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container-fluid">
    <div class="table-wrap">
        <table class="table">
            <thead style="background-color: #ebedeb">
                <tr>
                    <th>ID</th>
                    <th>Session No</th>
                    <th>Name</th>
                    <th>Details</th>
                    
                    <c:if test="${sessionScope.roleName == 'admin' || sessionScope.roleName == 'crdd' || sessionScope.roleName == 'syllabus_designer'}">
                        <th>Edit</th>
                    </c:if>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${qlist}" var="q">
                    <tr>
                        <td>${q.qid}</td>
                        <td>${q.sessionNo}</td>
                        <td>${q.qName}</td>
                        <td>${q.qDetail}</td>
                        <c:if test="${sessionScope.roleName == 'admin' || sessionScope.roleName == 'crdd' || sessionScope.roleName == 'syllabus_designer'}">
                            <td class="d-flex">
                                <a id="update" href="editQuestion?qid=${q.qid}" style="color:black"><i class="fa fa-pen-to-square fa-lg"></i></a>
                                &nbsp;&nbsp;&nbsp;
                                <a id="delete" style="color:black" onclick="messageSuccess(${q.qid})"><i class="fa fa-trash fa-lg"></i></a>
                            </td>
                        </c:if>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<div class="float-end">
    <p style="color: blueviolet; font-weight: bold">${requestScope.countQuestion} Constructive question(s)</p>
</div>

<c:if test="${sessionScope.roleName == 'admin' || sessionScope.roleName == 'crdd' || sessionScope.roleName == 'syllabus_designer'}">
    <a href="addQuestion?sid=${list[0].syllabusID}">
        <button class="btn-52">
            <div class="original">Add</div>
            <div class="letters">
                <!-- Place each letter in its own element -->
                <span>A</span>
                <span>D</span>
                <span>D</span>
            </div>
        </button>
    </a>
</c:if>

<script>
    function messageSuccess(qid) {
        var option = confirm('Are you sure to delete?');
        if (option === true) {
            window.document.location.href = "deleteQuestion?qid=" + qid;
        }
    }

</script>