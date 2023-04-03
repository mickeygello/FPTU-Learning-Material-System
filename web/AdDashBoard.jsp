<%-- 
    Document   : AdDashBoard
    Created on : Mar 5, 2023, 8:12:01 PM
    Author     : TUF GAMING
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                  
                         <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class='bx bxs-dollar-circle' ></i> &nbsp; &nbsp;&nbsp; Subject
                        </button>
                        <ul class="dropdown-menu">
                            <li>
                            <c:if test="${sessionScope.roleName == 'staff_of_crdd' or sessionScope.roleName == 'head_of_crdd'}">
                            <a href="listCategory">Category</a>
                            </c:if>
                            <c:if test="${sessionScope.roleName != 'staff_of_crdd' and sessionScope.roleName != 'head_of_crdd'}">
                            <a href="Page404.jsp">Category</a>
                            </c:if>
                            </li>
                        </ul>
                    </div>
                 
                </li>
                <li>
                    <a href="#">
                        <i class='bx bxs-doughnut-chart' ></i>
                        <span class="text">Curriculum</span>
                    </a>
                </li>
                <li>


                    <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class='bx bxs-message-dots' ></i> &nbsp; &nbsp;&nbsp;  Syllabus
                        </button>
                        <ul class="dropdown-menu">
                            <c:if test="${sessionScope.roleName == 'staff_of_crdd' or sessionScope.roleName == 'head_of_crdd' or sessionScope.roleName == 'syllabus_designer'}">

                            <li><a href="listAssessment">Assessment</a></li>
                            <li><a href="listMaterial">Material</a></li>
                            <li><a href="listSession">Session</a></li>
                            </c:if>
                            <c:if test="${sessionScope.roleName != 'staff_of_crdd' and sessionScope.roleName != 'head_of_crdd' and sessionScope.roleName != 'syllabus_designer'}">

                            <li><a href="Page404.jsp">Assessment</a></li>
                            <li><a href="Page404.jsp">Material</a></li>
                            <li><a href="Page404.jsp">Session</a></li>
                            </c:if>
                        </ul>
                    </div>


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
<<<<<<< HEAD
<!--
-->                <ul class="box-info">
=======

                <ul class="box-info">
>>>>>>> 29c54f644f6046a556aa5f2f41e9103dd7ac3953
                    <li>
                        <i class='bx bxs-calendar-check' ></i>
                        <span class="text">
                            <h3>Subject</h3>
                            <p>34</p>
                        </span>
                    </li>
                    <li>
                        <i class='bx bxs-group' ></i>
                        <span class="text">
                            <h3>User</h3>
                            <p>34</p>
                        </span>
                    </li>
                    <li>
                        <i class='bx bxs-calendar-check' ></i>
                        <span class="text">
                            <h3>Material</h3>
                            <p>56</p>
                        </span>
                    </li>
                </ul>

<<<<<<< HEAD
                  

=======
>>>>>>> 29c54f644f6046a556aa5f2f41e9103dd7ac3953
                <div class="table-data">
                    <div class="order">
                        <div class="head">
                            <h3>Team Development Programs</h3>
                            <i class='bx bx-search' ></i>
                            <i class='bx bx-filter' ></i>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <th>Team Member</th>
                                    <th>Join Date</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <p>Nguyễn Anh Tú</p>
                                    </td>
                                    <td>01-01-2023</td>
                                    <td><span class="status completed">Process</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>Thái Anh</p>
                                    </td>
                                    <td>01-01-2023</td>
                                    <td><span class="status pending">Process</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>Quốc Khánh</p>
                                    </td>
                                    <td>01-01-2023</td>
                                    <td><span class="status process">Process</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>Văn Khánh</p>
                                    </td>
                                    <td>01-01-2023</td>
                                    <td><span class="status pending">Process</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>Khánh Linh</p>
                                    </td>
                                    <td>01-01-2023</td>
                                    <td><span class="status completed">Process</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->
        <script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>

        <script src="css/Admin_dashboard.js"></script>
    </body>
    <script>

        var editor = CKEDITOR.replace('editor2');
    </script>
</html>


