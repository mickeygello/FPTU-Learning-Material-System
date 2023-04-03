<%-- 
    Document   : AdDashBoard
    Created on : Mar 4, 2023, 10:17:32 PM
    Author     : DELL
--%>

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

        <input type="hidden" id ="status" value ="${requestScope.UpdateSuccess}">
        <div id="success-toast" class="toast hide" style="margin-top: 50px">
            <div class="toast-header" style="background-color: greenyellow;">
                <strong class="mr-auto">Success</strong>
                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
            </div>
            <div class="toast-body" style="backgr">
                You updated the successfully Material
            </div>
        </div>
        <input type="hidden" id ="status2" value ="${requestScope.AddSuccess}">

        <div id="success-toast2" class="toast hide" style="margin-top: 50px">
            <div class="toast-header" style="background-color: greenyellow;">
                <strong class="mr-auto">Success</strong>
                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
            </div>
            <div class="toast-body" style="backgr">
                You add the successfully Material
            </div>
        </div>

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
                    <div class="left" >
                        <h1>Dashboard</h1>
                        <ul class="breadcrumb">
                            <li>
                                <a href="#">Dashboard</a>
                            </li>
                            <li><i class='bx bx-chevron-right' ></i></li>
                            <li>
                                <a class="active" href="index.jsp">Home</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <jsp:include page="SessionListUser.jsp"/>

            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->


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

    </body>

</html>


