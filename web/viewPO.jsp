<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container-fluid">
    <div class="table-wrap">
        <table class="table">
            <thead style="background-color: #ebedeb">
                <tr>
                    <th>CLO Name</th>
                    <th>CLO Details</th>
                    <th>LO Details</th>
                        <c:if test="${sessionScope.roleName == 'admin' || sessionScope.roleName == 'crdd' || sessionScope.roleName == 'syllabus_designer'}">
                        <th>Edit</th>
                        </c:if>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="p">
                    <tr>
                        <td>${p.cloName}</td>
                        <td>${p.cloDetails}</td>
                        <td>${p.loDetails}</td>
                        <c:if test="${sessionScope.roleName == 'admin' || sessionScope.roleName == 'crdd' || sessionScope.roleName == 'syllabus_designer'}">
                            <td class="d-flex">
                                <a id="update" href="EditPO?cloName=${p.cloName}" style="color:black"><i class="fa fa-pen-to-square fa-lg"></i></a>
                                &nbsp;&nbsp;&nbsp;
                                <a id="delete" style="color:black" onclick="messageSuccess(${p.cloName})"><i class="fa fa-trash fa-lg"></i></a>
                            </td>
                        </c:if>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<div class="float-end">
    <p style="color: blueviolet; font-weight: bold">Total LO: ${requestScope.count}</p>
</div>

<c:if test="${sessionScope.roleName == 'admin' || sessionScope.roleName == 'crdd' || sessionScope.roleName == 'syllabus_designer'}">
    <a href="AddPO?sid=${list[0].syllabusID}">
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
    function messageSuccess(cloName) {
        var option = confirm('Are you sure to delete?');
        if (option === true) {
            window.document.location.href = "deletePO?cloName=" + cloName;
        }
    }

</script>
