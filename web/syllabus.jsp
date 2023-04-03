<%-- 
    Document   : syllabus
    Created on : Feb 16, 2023, 3:29:47 PM
    Author     : 84379
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <title>FPT Learning Materials System</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">

        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
        <link rel="stylesheet" href="assets/css/animated.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/scroll_to_top.css">
        <link rel="stylesheet" href="css/style_banner.css">

        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
        <link rel="stylesheet" href="assets/css/animated.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/scroll_to_top.css">

        <!--add css table-->
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/style - table.css">

        <!--navbar doc-->
        <!--Boxicons--> 
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/style_dashboard.css">

        <style>
            .btn-18,
            .btn-18 *,
            .btn-18 :after,
            .btn-18 :before,
            .btn-18:after,
            .btn-18:before {
                border: 0 solid;
                box-sizing: border-box;
            }
            .btn-18 {
                -webkit-tap-highlight-color: transparent;
                -webkit-appearance: button;
                background-color: #570ced;
                background-image: none;
                color: #fff;
                cursor: pointer;
                font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont,
                    Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif,
                    Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;
                font-size: 100%;
                font-weight: 900;
                line-height: 1.5;
                margin: 0;
                -webkit-mask-image: -webkit-radial-gradient(#000, #fff);
                padding: 0;
                text-transform: uppercase;
            }
            .btn-18:disabled {
                cursor: default;
            }
            .btn-18:-moz-focusring {
                outline: auto;
            }
            .btn-18 svg {
                display: block;
                vertical-align: middle;
            }
            .btn-18 [hidden] {
                display: none;
            }
            .btn-18 {
                border-radius: 99rem;
                border-width: 2px;
                padding: 0.5rem 3rem;
                z-index: 0;
            }
            .btn-18,
            .btn-18 .text-container {
                overflow: hidden;
                position: relative;
            }
            .btn-18 .text-container {
                display: block;
            }
            .btn-18 .text {
                display: block;
                mix-blend-mode: difference;
                position: relative;
            }
            .btn-18:hover .text {
                -webkit-animation: move-up-alternate 0.3s forwards;
                animation: move-up-alternate 0.3s forwards;
            }
            @-webkit-keyframes move-up-alternate {
                0% {
                    transform: translateY(0);
                }
                50% {
                    transform: translateY(80%);
                }
                51% {
                    transform: translateY(-80%);
                }
                to {
                    transform: translateY(0);
                }
            }
            @keyframes move-up-alternate {
                0% {
                    transform: translateY(0);
                }
                50% {
                    transform: translateY(80%);
                }
                51% {
                    transform: translateY(-80%);
                }
                to {
                    transform: translateY(0);
                }
            }
            .btn-18:after,
            .btn-18:before {
                --tilt: 20px;
                background: #9ceef0;
                -webkit-clip-path: polygon(
                    0 0,
                    calc(100% - var(--tilt)) 0,
                    100% 50%,
                    calc(100% - var(--tilt)) 100%,
                    0 100%
                    );
                clip-path: polygon(
                    0 0,
                    calc(100% - var(--tilt)) 0,
                    100% 50%,
                    calc(100% - var(--tilt)) 100%,
                    0 100%
                    );
                content: "";
                height: 100%;
                left: -100%;
                position: absolute;
                top: 0;
                transition: transform 0.6s;
                width: 100%;
            }
            .btn-18:after {
                -webkit-clip-path: polygon(
                    var(--tilt) 0,
                    0 50%,
                    var(--tilt) 100%,
                    100% 100%,
                    100% 0
                    );
                clip-path: polygon(var(--tilt) 0, 0 50%, var(--tilt) 100%, 100% 100%, 100% 0);
                left: 100%;
                z-index: -1;
            }
            .btn-18:hover:before {
                transform: translateX(100%);
            }
            .btn-18:hover:after {
                transform: translateX(-100%);
            }

            #td-name{
                color: blue;
            }
            #td-name:hover{
                border-bottom: 1px solid #6fdee8;
            }

        </style>

    </head>
    <body>
        <!-- ***** Header Area Start ***** -->

        <!-- SIDEBAR -->
        <jsp:include page="sidebar.jsp"/>

        <!-- ***** Header Area End ***** -->

        <!--syllabus list section start-->

<!--        <div class="main-image">
            <div class="heading_banner container">
                <h1 style="color: white; font-weight: bold;"><span>Syllabus</span></h1>
                <a class="button banner_button" href="#lists">scroll down to see website content &nbsp;<i class="fa fa-hand-point-down"></i></a>
            </div>
        </div>-->

        <div class="mt-4 container" style="background-color: white; border-radius: 2rem;">
            <section class="ftco-section">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-6 text-center mb-5">
                            <h2 class="heading-section" style="font-weight: bold;">Syllabus List</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-9">
                            <!--<form method="post" action="SearchSyllabus">-->
                            <form method="get" action="viewSyllabusList">
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style2">
                                            <label class="form-check-label" for="inlineFormCheck">
                                                Enter Name: 
                                            </label>
                                        </td>
                                        <td>
                                            <div class="form-inline">
                                                <div class="input-group">
                                                    <!--                                                    <input name="searchSyllabus"  type="text" id="txtKeyword" class="form-control rounded mr-2 ml-2" style="width:25rem;font-size: inherit;" />
                                                                                                        <input value="1" name="index" hidden />-->
                                                    <input name="search"  type="text" id="txtKeyword" value="${param["search"]}" class="form-control rounded mr-2" style="width:267px;font-size: inherit; margin: 0 10px;" />
                                                    <span class="input-group-btn">
                                                        <input type="submit" value="Search"  id="btnSearch" class="btn btn-primary" style="width:100px;" />
                                                    </span>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>       
                                </table>
                            </form>
                        </div>
                        <div class="col-md-3 mb-2">
                            <!--button-->
                            <c:if test="${sessionScope.roleName == 'admin' || sessionScope.roleName == 'crdd' || sessionScope.roleName == 'syllabus_designer'}">
                                <div>
                                    <a href="syllabusAdd.jsp">
                                        <button class="btn-18">
                                            <span class="text-container">
                                                <span class="text">Add New</span>
                                            </span>
                                        </button>
                                    </a>
                                </div>
                            </c:if>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-wrap">
                                <table class="table">
                                    <thead class="thead-primary">
                                        <tr>
                                            <th>Syllabus ID</th>
                                            <th>Subject Code</th>
                                            <th>Syllabus Name</th>
                                            <th>isActive</th>
                                            <th>isApproved</th>
                                            <th>DecisionNo MM/dd/yyyy</th>
                                                <c:if test="${sessionScope.roleName == 'admin' || sessionScope.roleName == 'crdd' || sessionScope.roleName == 'syllabus_designer'}">
                                                <th>Edit</th>
                                                </c:if>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${list}" var="s">
                                            <tr>
                                                <td>${s.sID}</td>
                                                <td>${s.subjectCode}</td>
                                                <td><a href="SyllabusDetail?sid=${s.sID}" id="td-name">${s.sName}</a></td>
                                                <td>${s.isActive}</td>
                                                <td>${s.isApproved}</td>
                                                <td><a href="ViewDecisionNo?dno=${s.decisionNo}">${s.decisionNo}</a></td>
                                                    <c:if test="${sessionScope.roleName == 'admin' || sessionScope.roleName == 'crdd' || sessionScope.roleName == 'syllabus_designer'}">
                                                    <!--<td class="d-flex">-->
                                                    <td>
                                                        <!--<a id="update" href="updateSyllabus?sid=${s.sID}" style="color:black"><i class="fa fa-pen-to-square fa-lg"></i></a>-->
                                                        <a id="update" href="EditSyllabus?sid=${s.sID}" style="color:black"><i class="fa fa-pen-to-square fa-lg"></i></a>
                                                        <!--                                                        &nbsp;&nbsp;&nbsp;
                                                                                                                <a id="delete" style="color:black" onclick="messageSuccess(${s.sID})"><i class="fa fa-trash fa-lg"></i></a>-->
                                                    </td>
                                                </c:if>
                                            </tr>
                                            
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="paging" style="text-align: center;margin-top: 2rem; margin-bottom: 2rem;">
                                <%--<c:forEach begin="1" end="${endPage}" var="i">--%>
                                    <!--<a href="SearchSyllabus?index=${i}" style="color: black; font-weight: bold;border: 3px solid #6fdee8;padding-left: 5px; padding-right: 5px;border-radius: 8px;">${i}</a>-->
                                <%--</c:forEach>--%>

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
                                            <a class="page-link" href="viewSyllabusList?index=${index-1}" >Previous</a>
                                        </li>
                                        <li class="page-item active">
                                            <a class="page-link" href="viewSyllabusList?index=${index}" style="color: white;">${index}</a>
                                        </li>
                                        <li class="page-item <c:if test="${index==numberPage+1}">disabled　
                                            </c:if>">
                                            <a class="page-link" href="viewSyllabusList?index=${index+1}">Next</a>
                                        </li>
                                    </ul>
                                </nav>

                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

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
        <!--syllabus list section end-->

        <!--footer section start-->
        <jsp:include page="footer1.jsp"/>
        <!--footer section end-->

        <!--message edit data success-->
        <script>
            function messageSuccess(id) {
                var option = confirm('Are you sure to delete?');
                if (option === true) {
                    window.document.location.href = "deleteSyllabus?sid=" + id;
                }
            }

        </script>
        <script src="css/Admin_dashboard.js"></script>
    </body>
</html>
