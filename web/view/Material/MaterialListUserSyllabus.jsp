<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container-fluid">
    <div class="table-wrap" style="padding: 33px; display: flex; justify-content: center; margin-top: 70px">
        <table class="table">
            <thead style="background-color: #ebedeb">
                <tr>
                    <th>Material Description</th>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>Published Date</th>
                    <th>Edition</th>
                    <th>ISBN</th>
                    <th>IsMainMaterial</th>
                    <th>IsHardCopy</th>
                    <th>IsOnline</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.listMaterial}" var="i">
                    
                    <tr>
                        <td>${i.material_description}</td>
                        <td>${i.author}</td>
                        <td>${i.publisher}</td>
                        <td>${i.published_date}</td>
                        <td>${i.edition}</td>
                        <td>${i.isbn}</td>
                        <td>

                            <c:if test = "${(i.is_main == 1)}">
                                <i class="material-icons">&#xe92f;</i>
                            </c:if>
                            <c:if test = "${(i.is_main == 0)}">
                                <i class="material-icons">&#xE5C9;</i>
                            </c:if>

                        </td>
                        <td>

                            <c:if test = "${(i.is_hard_copy == 1)}">
                                <i class="material-icons">&#xe92f;</i>
                            </c:if>
                            <c:if test = "${(i.is_hard_copy == 0)}">
                                <i class="material-icons">&#xE5C9;</i>
                            </c:if>
                        </td>
                        <td>
                            <c:if test = "${(i.is_online == 1)}">
                                <i class="material-icons">&#xe92f;</i>
                            </c:if>
                            <c:if test = "${(i.is_online == 0)}">
                                <i class="material-icons">&#xE5C9;</i>
                            </c:if>
                        </td>



                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

