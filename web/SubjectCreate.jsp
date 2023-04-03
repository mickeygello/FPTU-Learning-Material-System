<%-- 
    Document   : CurriculumAdd
    Created on : Jan 30, 2023, 4:22:05 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import = "model.*" %>
<%@page import = "dal.*" %>
<%@page import = "java.util.List" %>
<%@page import = "java.util.ArrayList" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
  SubjectDAO u = new SubjectDAO();
  List<Subject> list = u.getAll();
%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Subject</title>
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

        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/style_dashboard.css">

        <style>
            .inputSize{
                width: 47%;

            }



        </style>
    </head>
    <body>

        <!--        <div style="margin-top: 50px ">
                    <h1 style="text-align: center; margin-top: 10rem ">Create New Subject</h1>
                </div>-->

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
                        <span class="text">Home Page</span>
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
                    <a href="AdDashBoard.jsp">
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

        <!--        <div class="container">
                    <div class="row">
                        <div class="col-md-12">
        
                            <div style="display: flex; justify-content: center">
                                <form method="post" action="SubjectCreate" style="padding: 5px; width: 50%">
                                    <label style="font-weight: bold">Subject Code:</label>
                                    <input type="text" name="code" required=""  class="form-control">
                                    <label style="font-weight: bold">Subject Name:</label>
                                    <input type="text" name="name" required=""  class="form-control">
                                    <label style="font-weight: bold">Description:</label>
                                    <textarea style="height: 250px"  name="desc" class="form-control"></textarea>
                                    <label style="font-weight: bold">Credit:</label>
                                    <input type="text" name="credit"  class="form-control"  pattern="[0-9]{1,255}" title="Credit must be integer" autocomplete="off" required>
                                    <label style="font-weight: bold">Degree Level:</label>
                                    <input type="text" name="degree"  class="form-control">
                                    <label style="font-weight: bold">Combo ID:</label>
                                    <input type="text" name="combo"  class="form-control" pattern="[0-9]{1,255}" title="Combo ID must be integer" autocomplete="off" required>
                                    <button style="margin-top:10px" type="submit"  class="btn btn-primary">Add </button>
                                </form>
                            </div>
                        </div>
                    </div>
        
                </div>-->

        <section id="content">
            <!-- NAVBAR -->
            <nav>
                <i class='bx bx-menu' ></i>
                <a href="index.jsp" class="nav-link"><img style="width:40%;" src="assets/images/logo_fpt.png" alt="image logo"></a>
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
                        <h1>Update Subject</h1>
                        <ul class="breadcrumb">
                            <li>
                                <a href="listSubject">Subject List</a>
                            </li>
                            <li><i class='bx bx-chevron-right' ></i></li>
                            <li>
                                <a class="active" href="#">Update</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="formCrud">
                    <form action="SubjectCreate" method="post" style="padding: 5px; width: 100%; ">
                        <c:set var="c" value ="${requestScope.subject}"/>
                        <div style="display:flex; justify-content: space-between; margin-top: 20px">
                            <div class="inputSize">
                                <label style="font-weight: bold">Subject Code:</label>
                                <c:if test = "${id != -1}">
                                    <input style="" placeholder="Input Subject Code" type="text" name="sjCode" value="${c.subject_Code}" class="form-control" required readonly>
                                </c:if>
                                <c:if test = "${id == -1}">
                                    <input style="" placeholder="Input Subject Code" type="text" name="sjCode" value="${c.subject_Code}" class="form-control" required>
                                </c:if>
                            </div>
                            <div class="inputSize">
                                <label style="font-weight: bold">Subject Name:</label>
                                <input style="" placeholder="Input Subject Name" type="text" name="sjName" value="${c.subject_Name}" class="form-control" required>
                            </div>
                        </div>

                        <div style="display:flex; justify-content: space-between; margin-top: 20px">
                            <div class="inputSize">
                                <label style="font-weight: bold">Credit:</label>
                                <input style="" placeholder="Input Subject Code" type="text" name="credit" value="${c.no_credit}" class="form-control" required>
                            </div>
                            <div class="inputSize">
                                <label style="font-weight: bold">Degree Level:</label>
                                <div>
                                    <select style="height: 35px; width: 200px" name="degree" id="degree">
                                        <option value="Associate">Associate</option>
                                        <option value="Bachelor">Bachelor</option>
                                        <option value="Master">Master</option>
                                        <option value="Doctoral">Doctoral</option>
                                    </select>
                                </div>

                            </div>
                        </div>

                        <div style="margin-top: 20px">
                            <label style="font-weight: bold">Status:</label>
                            <c:if test = "${(c.status == true)}">
                                Active <input type="radio" name="status" value="true" checked>
                                Inactive <input type="radio" name="status" value="false" ><br>
                            </c:if>
                            <c:if test = "${(c.status == false)}">
                                Active <input type="radio" name="status" value="true">
                                Inactive <input type="radio" name="status" value="false" checked><br>
                            </c:if>

                            <c:if test = "${(c.status != true and c.status != false)}">
                                Active <input type="radio" name="status" value="true" checked>
                                Inactive <input type="radio" name="status" value="false" ><br>
                            </c:if>
                        </div>

                        <label style="font-weight: bold; margin-top: 20px">Combo ID:</label>
                        <c:if test = "${id != -1}">
                            <input style="" placeholder="Input Combo ID" type="text" name="combo" value="${c.combo_id}" class="form-control" required readonly>
                        </c:if>
                        <c:if test = "${id == -1}">
                            <input style="" placeholder="Input Combo ID" type="text" name="combo" value="${c.combo_id}" class="form-control" required>
                        </c:if>

                        <label style="font-weight: bold; margin-top: 20px ">Description :</label>
                        <textarea  placeholder="Input description of subject" style="height: 250px; "  value="${c.description}"  name="description" class="form-control"></textarea>




                        <button style="margin: 10px" type="submit" class="btn btn-primary">Add</button>
                    </form>
                </div>

            </main>
            <!-- MAIN -->
        </section>
    </body>

    <footer>
        <jsp:include page="footer1.jsp"/>
    </footer>
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

<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/animation.js"></script>
<script src="assets/js/imagesloaded.js"></script>
<script src="assets/js/custom.js"></script>
<script src="assets/js/scroll_to_top.js"></script>

<script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>

<script src="css/Admin_dashboard.js"></script>
</body>
<script>

    var editor = CKEDITOR.replace('editor2');
</script>

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