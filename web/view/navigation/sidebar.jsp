<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- SIDEBAR -->
<section id="sidebar">
    <c:if test="${sessionScope.roleName == 'admin' || 'crdd'}">
        <a href="#" class="brand">
            <i class='bx bxs-smile'></i>
            <span class="text">Admin management</span>
        </a>
    </c:if>
    <c:if test="${sessionScope.roleName != 'admin' || 'crdd'}">
        <a href="#" class="brand">
            <i class='bx bxs-smile'></i>
            <span class="text">Learning Website</span>
        </a>
    </c:if>
    <ul class="side-menu top">
        <!--<li class="active">-->
        <li>
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
        <li class="active">
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
        <c:if test="${sessionScope.roleName == 'admin' || 'crdd'}">                                                
        <li>
            <a href="AdDashboard.jsp">
                <i class='bx bxs-cog' ></i>
                <span class="text">Settings</span>
            </a>
        </li>
        </c:if>
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
            <div class="form-input" >
                <input type="hidden" placeholder="Search...">
                <!--< type="hidden" class="search-btn"><i class='bx bx-search' ></i></button>-->
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
