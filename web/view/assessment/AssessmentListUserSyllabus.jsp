<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container-fluid">
    <div class="table-wrap" style="padding: 33px; display: flex; justify-content: center; margin-top: 70px">
        <table class="table">
            <thead style="background-color: #ebedeb">
                <tr>
                    <th>Category</th>
                    <th>Type</th>
                    <th>part</th>
                    <th>Weight</th>
                    <th>Completion criteria</th>
                    <th>duration</th>
                    <th>clo</th>
                    <th>Question type</th>
                    <th>No question</th>
                    <th>Knowledge And Skill</th>
                    <th>grading guide</th>

                    <th>Note</th>
                </tr>
            </thead>
            <tbody>
              
                <c:forEach items="${requestScope.listAssessment}" var="i">
                    <tr>
                       
                        <td>${i.category}</td>
                        <td>${i.type}</td>
                        <td>${i.part}</td>
                        <td>${i.weight}</td>
                        <td>${i.completionCriteria}</td>
                        <td>${i.duration}</td>
                        <td>${i.clo}</td>

                        <td>${i.questionType}</td>
                        <td>${i.noQuestion}</td>
                        <td>${i.knowledgeAndSkill}</td>
                        <td>${i.gradingGuide}</td>
                        <td>${i.note}</td>


                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<div class="float-end">
    <p style="color: blueviolet; font-weight: bold">Total LO: ${requestScope.count}</p>
</div>

