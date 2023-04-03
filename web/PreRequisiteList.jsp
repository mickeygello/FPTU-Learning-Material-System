<%-- 
    Document   : subjectList
    Created on : Jan 30, 2023, 10:58:09 AM
    Author     : TUF GAMING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import = "model.*" %>
<%@page import = "dal.*" %>
<%@page import = "java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>

<%
    List<PreRequisite> list = (List<PreRequisite>) request.getAttribute("PreRequisite");
%> 
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title >Learning Path of Subject</title>
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="css/style_banner.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
        <link rel="stylesheet" href="assets/css/animated.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/scroll_to_top.css">

        <!--navbar doc-->
        <!--Boxicons--> 
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/style_dashboard.css">
        <style>
            .inputSize{
                width: 47%;

            }
            .toast {
                position: fixed;
                top: 0;
                right: 0;
                z-index: 999;
            }

            .toast.show {
                display: block;
                opacity: 1;
            }

            .toast.hide {
                display: none;
                opacity: 0;
            }



        </style>

    </head>



    <body>
        <input type="hidden" id ="status" value ="${requestScope.UpdateSuccess}">
        <div id="success-toast" class="toast hide">
            <div class="toast-header" style="background-color: greenyellow;">
                <strong class="mr-auto">Success</strong>
                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
            </div>
            <div class="toast-body" style="backgr">
                You updated the successfully Learning Path
            </div>
        </div>
        <input type="hidden" id ="status2" value ="${requestScope.AddSuccess}">
        <div id="success-toast2" class="toast hide">
            <div class="toast-header" style="background-color: greenyellow;">
                <strong class="mr-auto">Success</strong>
                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
            </div>
            <div class="toast-body" style="backgr">
                You add the successfully Learning Path
            </div>
        </div>

        <%--<jsp:include page="header1.jsp"/>--%>
        <!-- SIDEBAR -->
        <jsp:include page="sidebar.jsp"/>
        <!--        <div class="main-image">
                    <div class="heading_banner container">
                        <h1><span style="color: white">PreRequisite</span></h1>
                        <a class="button banner_button" href="#">scroll down to see website content &nbsp;<i class="fa fa-hand-point-down"></i></a>
                    </div>
                </div>-->


        <section class="ftco-section">
            <div class="container">
                <!--                <div class="row justify-content-center">
                                    <div class="col-md-6 text-center mb-5">
                                        <h2 class="heading-section">Subject Table</h2>
                                    </div>
                                </div>-->
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="text-center mb-4" style=" font-weight: bold;">FPTU Learning Path of Subject</h1>
                        <div class="table-wrap">
                            <form method="GET" action="ListPreRequisite">
                                <table class="auto-style1" style="margin: 15px;">
                                    <tr>
                                        <td class="auto-style2" style="text-align: right">
                                            <label class="form-check-label" for="inlineFormCheck">
                                                Enter Subject Code: 
                                            </label>
                                        </td>
                                        <td>
                                            <div class="container">
                                                <div class="row">
                                                    <div class="form-inline">
                                                        <div class="input-group">
                                                            <input name="search"  type="text" id="txtKeyword" value="${param["search"]}" class="form-control rounded mr-2" style="width:267px;font-size: inherit; margin: 0 10px;" />
                                                            <span class="input-group-btn">
                                                                <input type="submit"  value="Search" id="btnSearch" class="btn btn-success" style="width:100px;" />
                                                            </span>
                                                        </div>
                                                        <c:if test="${sessionScope.roleName == 'head_of_crdd' || 'staff_of_crdd' || 'staff_of_ad'}">
                                                            <a  style="margin-left:29rem;" class="btn btn-primary" href="PreRequisiteUpdate?id=-1">Add new</a>
                                                        </c:if>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </form>
                            <table class="table">
                                <thead class="thead-primary">
                                    <tr>
                                        <th>ID</th>
                                        <th>Subject Code</th>
                                        <th>PreRequisite</th>
                                        <th>Description</th>
                                            <c:if test="${sessionScope.roleName == 'head_of_crdd' || 'staff_of_crdd' || 'staff_of_ad'}">
                                            <th>Action</th>
                                            </c:if>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${requestScope.PreRequisite}" var="s">
                                        <tr>
                                            <td>${s.id} </td>
                                            <td>
                                                ${s.sjCode}
                                            </td>
                                            <td>
                                                ${s.reqSubject}
                                                <c:forEach items="${requestScope.PreRequisite}" var="p">
                                                    <c:if test="${p.sjCode == s.sjCode}">

                                                    </c:if>
                                                </c:forEach>
                                            </td>
                                            <td>${s.descriptions} </td>
                                            <c:if test="${sessionScope.roleName == 'head_of_crdd' || 'staff_of_crdd' || 'staff_of_ad'}">
                                                <td>
                                                    <a href="PreRequisiteUpdate?id=${s.getId()}" class="btn btn-warning">Edit</a>
                                                    <a href="DeletePreRequisite?id=${s.getId()}" class="btn btn-danger">Delete</a>
                                                </td>

                                            </c:if>
                                        </tr>
                                    </c:forEach> 
                                </tbody>
                            </table>
                        </div>
                        <div class="paging" style="text-align: center;margin-top: 2rem; margin-bottom: 2rem;">
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
                                        <a class="page-link" href="ListPreRequisite?index=${index-1}" >Previous</a>
                                    </li>
                                    <li class="page-item active">
                                        <a class="page-link" href="ListPreRequisite?index=${index}" style="color: white;">${index}</a>
                                    </li>
                                    <li class="page-item <c:if test="${index==numberPage+1}">disabled　
                                        </c:if>">
                                        <a class="page-link" href="ListPreRequisite?index=${index+1}">Next</a>
                                    </li>
                                </ul>
                            </nav>

                        </div>
                    </div>
                </div>
            </div>
        </section>                  
    </body>
    <jsp:include page="footer1.jsp"/>

</html>

<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/animation.js"></script>
<script src="assets/js/imagesloaded.js"></script>
<script src="assets/js/custom.js"></script>
<script src="assets/js/scroll_to_top.js"></script>

<script src="css/Admin_dashboard.js"></script>

<script type="text/javascript">
    function showToast() {
        const successToast = document.getElementById('success-toast');
        successToast.classList.remove('hide');
        successToast.classList.add('show');
        setTimeout(() => {
            successToast.classList.remove('show');
            successToast.classList.add('hide');
        }, 5000);
    }
    function showToast2() {
        const successToast = document.getElementById('success-toast2');
        successToast.classList.remove('hide');
        successToast.classList.add('show');
        setTimeout(() => {
            successToast.classList.remove('show');
            successToast.classList.add('hide');
        }, 5000);
    }

    var status = document.getElementById("status").value;
    var status2 = document.getElementById("status2").value;
    if (status === "success") {
        showToast();
        // sau khi dùng xong thì xóa session
        localStorage.removeItem("UpdateSuccess");
    }
    if (status2 === "success") {
        showToast2();
        localStorage.removeItem("AddSuccess");
    }
</script>

<script>
// Acc
    $(document).on("click", ".naccs .menu div", function () {
        var numberIndex = $(this).index();

        if (!$(this).is("active")) {
            $(".naccs .menu div").removeClass("active");
            $(".naccs ul li").removeClass("active");

            $(this).addClass("active");
            $(".naccs ul").find("li:eq(" + numberIndex + ")").addClass("active");

            var listItemHeight = $(".naccs ul")
                    .find("li:eq(" + numberIndex + ")")
                    .innerHeight();
            $(".naccs ul").height(listItemHeight + "px");
        }
    });
</script>