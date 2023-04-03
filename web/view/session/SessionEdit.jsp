<%-- 
    Document   : AdDashBoard
    Created on : Mar 4, 2023, 10:17:32 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashbroad</title>

        <!--Boxicons--> 
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/style_dashboard.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"><!-- comment -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
        <link rel="stylesheet" href="assets/css/animated.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/scroll_to_top.css">
        <style>
            .inputSize{
                width: 47%;

            }



        </style>
    </head>
    <body>
        <!-- SIDEBAR -->
        <section id="sidebar">
            <a href="#" class="brand">
                <i class='bx bxs-smile'></i>
                <span class="text">Admin management</span>
            </a>
            <ul class="side-menu top">
                <li class="active">
                    <a href="index.jsp">
                        <i class='bx bxs-dashboard' ></i>
                        <span class="text">HomePage</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bxs-dollar-circle' ></i>
                        <span class="text">Subject</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bxs-doughnut-chart' ></i>
                        <span class="text">Curriculum</span>
                    </a>
                </li>
                <li>
                    <a href="viewSyllabusList">
                        <i class='bx bxs-message-dots' ></i>
                        <span class="text">Syllabus</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bxs-group' ></i>
                        <span class="text">User</span>
                    </a>
                </li>
            </ul>
            <ul class="side-menu">
                <li>
                    <a href="AdDashboard.jsp">
                        <i class='bx bxs-cog' ></i>
                        <span class="text">Settings</span>
                    </a>
                </li>
                <li>
                    <a href="login.jsp" class="logout">
                        <i class='bx bxs-log-out-circle' ></i>
                        <span class="text">Logout</span>
                    </a>
                </li>
            </ul>
        </section>
        <!-- SIDEBAR -->



        <!-- CONTENT -->
        <section id="content">
            <!-- NAVBAR -->
            <nav>
                <i class='bx bx-menu' ></i>
                <a href="#" class="nav-link"><img style="width:40%;" src="assets/images/logo_fpt.png" alt="image logo"></a>
                <form action="#">
                    <div class="form-input">
                        <input type="search" placeholder="Search...">
                        <button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
                    </div>
                </form>
                <input type="checkbox" id="switch-mode" hidden>
                <label for="switch-mode" class="switch-mode"></label>
                <a href="#" class="notification">
                    <i class='bx bxs-bell' ></i>
                    <span class="num">8</span>
                </a>
            </nav>
            <!-- NAVBAR -->

            <!-- MAIN -->
            <main>
                <div class="head-title">
                    <div class="left">
                        <h1>Dashboard</h1>
                        <ul class="breadcrumb">
                            <li>
                                <a href="#">Dashboard</a>
                            </li>
                            <li><i class='bx bx-chevron-right' ></i></li>
                            <li>
                                <a class="active" href="#">Home</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="formCrud">
                    <form action="editSession" method="post" style="padding: 5px; width: 100%; ">




                        <label style="font-weight: bold">Topic *:</label>
                        <c:set var="c" value ="${requestScope.material}"/>
                        <input style="" placeholder="Input topic of Session" type="text" name="topic" value="${c.topic}" class="form-control">

                        <c:if test="${requestScope.errorMdes != null}">
                            <div style="color: red; text-align: center; font-size: bolder">${requestScope.errorMdes}</div>

                        </c:if>

                        <div style="display:flex; justify-content: space-between; margin-top: 20px">
                            <div class="inputSize">
                                <label style="font-weight: bold">learning_teaching_type:</label>
                                <input style="" placeholder="Input learning_teaching_type of Session" type="text" name="learning_teaching_type" value="${c.learning_teaching_type}" class="form-control">


                                <c:if test="${requestScope.errorNote != null}">
                                    <div style="color: red; text-align: center; font-size: bolder">${requestScope.errorNote}</div>

                                </c:if>
                            </div>

                            <!--                            <div class="inputSize">
                                                            <label style="font-weight: bold">LO:</label>
                                                            <input style="" placeholder="Input LO of Session" type="text" name="lO" value="${c.lO}" class="form-control">
                                                        </div>-->
                        </div>
                        <div style="display:flex; justify-content: space-between; margin-top: 20px">
                            <div class="inputSize">

                                <label style="font-weight: bold">ITU:</label>
                                <input style="" placeholder="Input ITU of Session"type="text" name="iTU" value="${c.iTU}" class="form-control">


                            </div>


                            <div class="inputSize">
                                <label style="font-weight: bold">studentMaterial :</label>
                                <input style="" placeholder="Input studentMaterial of Session" type="text" name="studentMaterial" value="${c.studentMaterial}"  class="form-control">
                            </div>
                        </div>
                        <div style="display:flex; justify-content: space-between; margin-top: 20px">
                            <div class="inputSize">
                                <input type="file" name="download" id="file-upload">
                                <button id="upload-button">Upload</button>
                            </div>


                            <div class="inputSize">
                                <label style="font-weight: bold">studentTask:</label>
                                <input style="" placeholder="Input studentTask of Session" type="text" name="studentTask" value="${c.studentTask}" class="form-control">

                            </div>

                        </div>
                        <div style="display:flex; justify-content: space-between; margin-top: 20px">
                            <div class="inputSize">
                                <label style="font-weight: bold">urls :</label>
                                <input style="" placeholder="Input urls of assessment" type="text" name="urls" value="${c.urls}"  class="form-control">
                            </div>
                            <div class="inputSize" style="padding-top: 30px;">
                                <label style="font-weight: bold">Status:</label>


                                <c:if test = "${(c.status == 1)}">
                                    True <input type="radio" id="id" name="status" value="1" checked>

                                    false <input type="radio" id="id" name="status" value="0" ><br>
                                </c:if>
                                <c:if test = "${(c.status == 0)}">
                                    True <input type="radio" id="id" name="status" value="1">

                                    false <input type="radio" id="id" name="status" value="0" checked><br>
                                </c:if>

                                <c:if test = "${(c.status != 1 and c.isActive != 0)}">
                                    True <input type="radio" id="id" name="status" value="1" checked>

                                    false <input type="radio" id="id" name="status" value="0" ><br>
                                </c:if>
                            </div>


                        </div>                           

                        <div style="display:flex; justify-content: space-between">   
                            <div class="" style="margin-top: 20px">

                                <label style="font-weight: bold">Syllabus Name *:</label>
                                <%--<c:if test = "${c.syllabusID2.sID == null}">--%>
                                    <select name = "syllabusID" class="form-control" required>
                                        <c:forEach items="${requestScope.dataSubject}" var = "d">
                                            <option value="${d.sID}">${d.sID}: ${d.sName}</option>
                                        </c:forEach>
                                    </select>
                                <%--</c:if>--%>

                               
                            </div>

                        </div>
                        <button style="margin: 10px" type="submit" class="btn btn-primary">Edit</button>
                    </form>
                </div>

            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->
        <script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>

        <script src="css/Admin_dashboard.js"></script>

        <script>
            $('#upload-button').click(function () {
                var file = $('#file-upload').get(0).files[0];
                var formData = new FormData();
                formData.append('file', file);

                $.ajax({
                    url: 'upload-file.jsp',
                    type: 'POST',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function (response) {
                        console.log(response);
                    },
                    error: function (jqXHR, textStatus, errorMessage) {
                        console.log(errorMessage);
                    }
                });
            });

        </script>
    </body>
    <script>

        var editor = CKEDITOR.replace('editor2');
    </script>
</html>


