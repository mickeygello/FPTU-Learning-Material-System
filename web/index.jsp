<%-- 
    Document   : index
    Created on : Feb 5, 2023, 1:38:19 AM
    Author     : 84379
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

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


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
        <link rel="stylesheet" href="assets/css/animated.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/scroll_to_top.css">

        <!--
        
        TemplateMo 565 Onix Digital
        
        https://templatemo.com/tm-565-onix-digital
        
        -->
         <style>
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

        <!-- ***** Preloader Start ***** -->
        <!-- <div id="js-preloader" class="js-preloader">
          <div class="preloader-inner">
            <span class="dot"></span>
            <div class="dots">
              <span></span>
              <span></span>
              <span></span>
            </div>
          </div>
        </div> -->
        <!-- ***** Preloader End ***** -->

        <!-- ***** Header Area Start ***** -->
        <input type="hidden" id ="status" value ="<%= request.getAttribute("status")%>">
         <div id="success-toast" class="toast hide" style="width:30%; height: 100px">
            <div class="toast-header" style="background-color: greenyellow;">
                <strong class="mr-auto">Success</strong>
                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
            </div>
            <div class="toast-body" style="backgr">
                <!--You updated the successfully Material-->
            </div>
        </div>
        <header class="header-area header-sticky wow slideInDown" data-wow-duration="0.75s" data-wow-delay="0s">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- ***** Logo Start ***** -->
                            <a href="index.jsp" class="logo">
                                <img style="width:40%;" src="assets/images/logo_fpt.png">
                            </a>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li class="scroll-to-section"><a href="#top" class="active">Home</a></li>
                                <li class="scroll-to-section"><a href="listSubject">Subject</a></li>
                                <li class="scroll-to-section"><a href="listMaterial">Material</a></li>
                                <li class="scroll-to-section"><a href="ListPreRequisite">Learning Path</a></li>
                                
                                <c:if test="${sessionScope.roleName != 'admin'}">
                                <li class="scroll-to-section"><a href="#portfolio">Curriculum</a></li>
                                </c:if>
                                  <c:if test="${sessionScope.roleName == 'admin'}">
                                <li class="scroll-to-section"><a href="#portfolio">Curriculum Manager</a></li>
                                </c:if>
                                <li class="scroll-to-section"><a href="viewSyllabusList">Syllabus</a></li> 
                                <li class="scroll-to-section">

                                    <c:if test="${sessionScope.DataEmail == null}">
                                        <div class="main-red-button-hover row text-overflow">
                                            <a class="col-md-12" href="login.jsp"><span class="fa fa-user"></span> Sign in / Sign up</a>
                                        </div>
                                    </c:if>
                                    <c:if test="${sessionScope.DataEmail != null}">

                                        <div class="dropdown dropdown-primary" style="margin-bottom: 12px;  width: 50px; height: 50px ">
                                            <button type="button" class="btn btn-pills btn-soft-primary dropdown-toggle p-0" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="data:image/png;base64,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" alt="alt"/></button>
                                            <div class="dropdown-menu dd-menu dropdown-menu-end bg-white shadow border-0 mt-3 py-3">
                                                <a class="dropdown-item d-flex align-items-center text-dark" href="https://shreethemes.in/doctris/layouts/admin/profile.html">
                                                    <img style="width: 50px; height: 50px" src="data:image/png;base64,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" class="avatar avatar-md-sm rounded-circle border shadow" alt="">

                                                    <div class="flex-1 ms-2">
                                                        <span style="color: black" class="d-block mb-1">${sessionScope.DataEmail}</span>
                                                        <small style="color: black; font-weight: bold" class="text-muted">${sessionScope.roleName}</small>
                                                    </div>
                                                </a>
                                                <br/>
                                                <c:if test="${sessionScope.roleName != 'guest' and sessionScope.roleName != 'student'}">
                                                <a href="AdDashBoard.jsp" style="color: black" class="dropdown-item text-dark" ><span class="mb-0 d-inline-block me-1"><i class="uil uil-dashboard align-middle h6"></i></span> Dashboard</a>
                                                </c:if><a style="color: black" class="dropdown-item text-dark" href="viewProfile"><span class="mb-0 d-inline-block me-1"><i class="uil uil-setting align-middle h6"></i></span> Profile Settings</a>
                                                <div class="dropdown-divider border-top"></div>
                                                <a style="color: black" class="dropdown-item text-dark" href="logout"><span class="mb-0 d-inline-block me-1"><i class="uil uil-sign-out-alt align-middle h6"></i></span> Logout</a>
                                            </div>
                                        </div>
                                    </c:if>
                                </li> 
                            </ul>        
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ***** Header Area End ***** -->

        <div class="main-banner" id="top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-lg-6 align-self-center">
                                <div class="owl-carousel owl-banner">
                                    <div class="item header-text">
                                        <h6>Welcome to FPT University</h6>
                                        <h2>FPT <em>University</em> Learning <span>Materials</span></h2>
                                        <p>Study while others are sleeping; work while others are loafing; prepare while others are playing; and dream while others are wishing.</p>
                                        <div class="down-buttons">
                                            <div class="main-blue-button-hover">
                                                <a href="#video">View Information</a>
                                            </div>
                                            <div class="call-button">
                                                <a href="#"><i class="fa fa-phone"></i> 024-7300-1866</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item header-text">
                                        <h6>Subject</h6>
                                        <h2>FPT <em>University</em> Learning <span>Materials</span></h2>
                                        <p>It doesn’t matter how slowly you go as long as you do not stop.</p>
                                        <div class="down-buttons">
                                            <div class="main-blue-button-hover">
                                                <a href="#services">Subject</a>
                                            </div>
                                            <div class="call-button">
                                                <a href="#"><i class="fa fa-phone"></i> 024-7300-1866</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item header-text">
                                        <h6>Curriculum</h6>
                                        <h2>FPT <em>University</em> Learning <span>Materials</span></h2>
                                        <p>Education is the most powerful weapon we use to change the world.</p>
                                        <div class="down-buttons">
                                            <div class="main-blue-button-hover">
                                                <a href="#portfolio">Curriculum</a>
                                            </div>
                                            <div class="call-button">
                                                <a href="#"><i class="fa fa-phone"></i> 024-7300-1866</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item header-text">
                                        <h6>Syllabus</h6>
                                        <h2>FPT <em>University</em> Learning <span>Materials</span></h2>
                                        <p>Should you need any further information, please do not hesitate to <a href="#contact">contact us </a></p>
                                        <div class="down-buttons">
                                            <div class="main-blue-button-hover">
                                                <a href="#contact">Contact Us</a>
                                            </div>
                                            <div class="call-button">
                                                <a href="#"><i class="fa fa-phone"></i> 024-7300-1866</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="services" class="our-services section">
            <div class="services-right-dec">
                <img src="assets/images/services-right-dec.png" alt="">
            </div>
            <div class="container">
                <div class="services-left-dec">
                    <img src="assets/images/services-left-dec.png" alt="">
                </div>
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="section-heading">
                            <h2>We <em>Provide</em> The Best Subject <span>For Student</span></h2>
                            <span>Subject</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="owl-carousel owl-services">
                            <div class="item">
                                <h4>LAB211</h4>
                                <div class="icon"><img src="assets/images/service-icon-01.png" alt=""></div>
                                <p>OOP with Java Lab</p>
                            </div>
                            <div class="item">
                                <h4>DBI202</h4>
                                <div class="icon"><img src="assets/images/service-icon-02.png" alt=""></div>
                                <p>Database System</p>
                            </div>
                            <div class="item">
                                <h4>JPD113</h4>
                                <div class="icon"><img src="assets/images/service-icon-03.png" alt=""></div>
                                <p>Japaneses Elemantary A1.1</p>
                            </div>
                            <div class="item">
                                <h4>JPD123</h4>
                                <div class="icon"><img src="assets/images/service-icon-04.png" alt=""></div>
                                <p>Japanese Elemantary A1.2</p>
                            </div>
                            <div class="item">
                                <h4>DTG121</h4>
                                <div class="icon"><img src="assets/images/service-icon-01.png" alt=""></div>
                                <p>Visual Design Tool</p>
                            </div>
                            <div class="item">
                                <h4>CCO201</h4>
                                <div class="icon"><img src="assets/images/service-icon-02.png" alt=""></div>
                                <p>Corporate Communication</p>
                            </div>
                            <div class="item">
                                <h4>HCM202</h4>
                                <div class="icon"><img src="assets/images/service-icon-03.png" alt=""></div>
                                <p>HCM Ideology</p>
                            </div>
                            <div class="item">
                                <h4>MAS291</h4>
                                <div class="icon"><img src="assets/images/service-icon-04.png" alt=""></div>
                                <p>Statistic & Probability</p>
                            </div>
                            <div class="item">
                                <h4>PRJ301</h4>
                                <div class="icon"><img src="assets/images/service-icon-01.png" alt=""></div>
                                <p>Java Web Development</p>
                            </div>
                            <div class="item">
                                <h4>VNR202</h4>
                                <div class="icon"><img src="assets/images/service-icon-02.png" alt=""></div>
                                <p>History of CPV</p>
                            </div>
                            <div class="item">
                                <h4>CHN111</h4>
                                <div class="icon"><img src="assets/images/service-icon-03.png" alt=""></div>
                                <p>Elementary Chinese</p>
                            </div>
                            <div class="item">
                                <h4>VNC104</h4>
                                <div class="icon"><img src="assets/images/service-icon-04.png" alt=""></div>
                                <p>Vietnamese Culture</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="about" class="about-us section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 align-self-center">
                        <div class="left-image">
                            <img src="assets/images/about_fpt1.jpg" alt="Two Girls working together">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="section-heading">
                            <h2 class="text-center"><span> About Us</span></h2>
                            <p>
                                FPT University was established on September 8, 2006 under the Prime Minister's Decision No. 208/2006/QD-TTg and operated under the Regulation on organization and operation of private universities under Decision No. 61/2009 / QD-TTg, issued on April 17, 2009 by the Government.
                            </p>
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="fact-item">
                                        <div class="count-area-content">
                                            <div class="icon">
                                                <img src="assets/images/service-icon-01.png" alt="image empty">
                                            </div>
                                            <div class="count-digit">98%</div>
                                            <div class="count-title">Student</div>
                                            <p>Students Have Job Now</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="fact-item">
                                        <div class="count-area-content">
                                            <div class="icon">
                                                <img src="assets/images/service-icon-02.png" alt="">
                                            </div>
                                            <div class="count-digit">19%</div>
                                            <div class="count-title">Student</div>
                                            <p>Students Have Working Outside</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="fact-item">
                                        <div class="count-area-content">
                                            <div class="icon">
                                                <img src="assets/images/service-icon-03.png" alt="">
                                            </div>
                                            <div class="count-digit">353,94$</div>
                                            <div class="count-title">Money</div>

                                            <p>Is Salary Medium</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="portfolio" class="our-portfolio section">
            <div class="portfolio-left-dec">
                <img src="assets/images/portfolio-left-dec.png" alt="">
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="section-heading">
                            <h2>We <em>Provide</em> The Best Curriculum <span>For Student</span></h2>
                            <span>Curriculum</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="owl-carousel owl-portfolio">
                            <div class="item">
                                <div class="thumb">
                                    <img src="assets/images/portfolio-01.jpg" alt="">
                                    <div class="hover-effect">
                                        <div class="inner-content">
                                            <li><a rel="sponsored" href="ListCurriculum" target="_parent"><h4>BBA_MC_K16B</h4></a></li>
                                            <span>FPT University</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <img src="assets/images/portfolio-02.jpg" alt="">
                                    <div class="hover-effect">
                                        <div class="inner-content">
                                            <a href="ListCurriculum"><h4>BIT_SE_K16B</h4></a>
                                            <span>FPT University</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <img src="assets/images/portfolio-03.jpg" alt="">
                                    <div class="hover-effect">
                                        <div class="inner-content">
                                            <a rel="sponsored" href="ListCurriculum" target="_parent"><h4>BBA_MC_K16C</h4></a>
                                            <span>FPT University</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <img src="assets/images/portfolio-04.jpg" alt="">
                                    <div class="hover-effect">
                                        <div class="inner-content">
                                            <a href="ListCurriculum"><h4>BEN_K16B</h4></a>
                                            <span>FPT University</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <img src="assets/images/portfolio-01.jpg" alt="">
                                    <div class="hover-effect">
                                        <div class="inner-content">
                                            <a href="ListCurriculum"><h4>BEN_K16C</h4></a>
                                            <span>FPT University</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <img src="assets/images/portfolio-02.jpg" alt="">
                                    <div class="hover-effect">
                                        <div class="inner-content">
                                            <a href="ListCurriculum"><h4>BBA_MKT_K16B</h4></a>
                                            <span>FPT University</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <img src="assets/images/portfolio-03.jpg" alt="">
                                    <div class="hover-effect">
                                        <div class="inner-content">
                                            <a href="ListCurriculum"><h4>BIT_GD_K16B</h4></a>
                                            <span>FPT University</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <img src="assets/images/portfolio-04.jpg" alt="">
                                    <div class="hover-effect">
                                        <div class="inner-content">
                                            <a href="ListCurriculum"><h4>BBA_MKT_K16C</h4></a>
                                            <span>FPT University</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <img src="assets/images/portfolio-01.jpg" alt="">
                                    <div class="hover-effect">
                                        <div class="inner-content">
                                            <a href="ListCurriculum"><h4>BBA_FIN_K16B</h4></a>
                                            <span>FPT University</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <img src="assets/images/portfolio-02.jpg" alt="">
                                    <div class="hover-effect">
                                        <div class="inner-content">
                                            <a href="ListCurriculum"><h4>BBA_FIN_K16C</h4></a>
                                            <span>FPT University</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <img src="assets/images/portfolio-03.jpg" alt="">
                                    <div class="hover-effect">
                                        <div class="inner-content">
                                            <a href="ListCurriculum"><h4>BBA_IB_K16B</h4></a>
                                            <span>FPT University</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <img src="assets/images/portfolio-04.jpg" alt="">
                                    <div class="hover-effect">
                                        <div class="inner-content">
                                            <a href="ListCurriculum"><h4>BIT_AI_K16B</h4></a>

                                            <span>FPT University</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="pricing" class="pricing-tables">
    <div class="tables-left-dec">
      <img src="assets/images/tables-left-dec.png" alt="">
    </div>
    <div class="tables-right-dec">
      <img src="assets/images/tables-right-dec.png" alt="">
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-6 offset-lg-3">
          <div class="section-heading">
            <h2>We <em>Provide</em> The Best Syllabus <span>For Student</span></h2>
            <span>Syllabus</span>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4">
          <div class="item first-item">
            <h4>Syllabus 1</h4>
<!--            <em>$160/mo</em>
            <span>$140</span>-->
            <ul>
              <li>Content 1</li>
              <li>Content 2</li>
              <li>Content 3</li>
              <li>Content 4</li>
            </ul>
            <div class="main-blue-button-hover">
              <a href="index.jsp">Get Started</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="item second-item">
            <h4>Syllabus 2</h4>
<!--            <em>$240/mo</em>
            <span>$200</span>-->
            <ul>
              <li>Content 1</li>
              <li>Content 2</li>
              <li>Content 3</li>
              <li>Content 4</li>
            </ul>
            <div class="main-blue-button-hover">
              <a href="index.jsp">Get Started</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="item third-item">
            <h4>Syllabus 3</h4>
<!--            <em>$360/mo</em>
            <span>$280</span>-->
            <ul>
              <li>Content 1</li>
              <li>Content 2</li>
              <li>Content 3</li>
              <li>Content 4</li>
            </ul>
            <div class="main-blue-button-hover">
              <a href="index.jsp">Get Started</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

        <div id="subscribe" class="subscribe">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="inner-content">
                            <div class="row">
                                <div class="col-lg-10 offset-lg-1">
                                    <h2>Update Your Email Here To Receive The Latest Information From Us</h2>
                                    <form id="subscribe" action="" method="get">
                                        <input type="text" name="website" id="website" placeholder="Your Website URL" required="">
                                        <input type="text" name="email" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email" required="">
                                        <button type="submit" id="form-submit" class="main-button ">Subscribe</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="video" class="our-videos section">
            <div class="videos-left-dec">
                <img src="assets/images/videos-left-dec.png" alt="">
            </div>
            <div class="videos-right-dec">
                <img src="assets/images/videos-right-dec.png" alt="">
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="naccs">
                            <div class="grid">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <ul class="nacc">
                                            <li class="active">
                                                <div>
                                                    <div class="thumb">
                                                        <iframe width="100%" height="auto" src="https://www.youtube.com/embed/rmDCPbRWKeY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                                                        <div class="overlay-effect">
                                                            <a href="#"><h4>Introduction</h4></a>
                                                            <span>FPT University</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>
                                                    <div class="thumb">
                                                        <iframe width="100%" height="auto" src="https://www.youtube.com/embed/SdtTU7UPCC0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                                                        <div class="overlay-effect">
                                                            <a href="#"><h4>Subject</h4></a>
                                                            <span>FPT University</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>
                                                    <div class="thumb">
                                                        <iframe width="100%" height="auto" src="https://www.youtube.com/embed/YhnnDSKPpHI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                                                        <div class="overlay-effect">
                                                            <a href="#"><h4>Curriculum</h4></a>
                                                            <span>FPT University</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>
                                                    <div class="thumb">
                                                        <iframe width="100%" height="auto" src="https://www.youtube.com/embed/zoECbc5u6aQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                                                        <div class="overlay-effect">
                                                            <a href="#"><h4>Syllabus</h4></a>
                                                            <span>FPT University</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="menu">
                                            <div class="active">
                                                <div class="thumb">
                                                    <img src="assets/images/video-thumb-01.png" alt="">
                                                    <div class="inner-content">
                                                        <h4>Introduction</h4>
                                                        <span>FPT University</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="thumb">
                                                    <img src="assets/images/video-thumb-02.png" alt="">
                                                    <div class="inner-content">
                                                        <h4>Subject</h4>
                                                        <span>FPT University</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="thumb">
                                                    <img src="assets/images/video-thumb-03.png" alt="Marketing">
                                                    <div class="inner-content">
                                                        <h4>Curriculum</h4>
                                                        <span>FPT University</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="thumb">
                                                    <img src="assets/images/video-thumb-04.png" alt="SEO Work">
                                                    <div class="inner-content">
                                                        <h4>Syllabus</h4>
                                                        <span>FPT University</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>             
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="contact" class="contact-us section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="section-heading">
                            <h2>Feel free to <em>Contact</em> us via the <span>form</span></h2>
                            <div id="map">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.4825530891567!2d105.51904141902928!3d21.013369387633503!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345bbfd675f23f%3A0x687158968ee822d6!2zVHLGsMahzIBuZyBUSFBUIEZQVCBIw6AgTuG7mWk!5e0!3m2!1svi!2s!4v1675488832642!5m2!1svi!2s" width="100%" height="350px" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                            <div class="info">
                                <span><i class="fa fa-phone"></i> <a href="#" class="align-self-center">024-7300-186</a></span>
                                <span><i class="fa fa-envelope"></i> <a href="#" class=align-self-center>daihocfpt@fpt.edu.vn</a></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 align-self-center">
                        <form id="contact" action="" method="get">
                            <div class="row">
                                <div class="col-lg-12">
                                    <fieldset>
                                        <input type="name" name="name" id="name" placeholder="Name" autocomplete="on" required>
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <input type="surname" name="surname" id="surname" placeholder="Surname" autocomplete="on" required>
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <input type="text" name="email" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email" required="">
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <input type="text" name="website" id="website" placeholder="Your Website URL" required="">
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <button type="submit" id="form-submit" class="main-button">Submit Request</button>
                                    </fieldset>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="contact-dec">
                <img src="assets/images/contact-dec.png" alt="">
            </div>
            <div class="contact-left-dec">
                <img src="assets/images/contact-left-dec.png" alt="">
            </div>
        </div>

        <div class="footer-dec">
            <img src="assets/images/footer-dec.png" alt="">
        </div>

        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="about footer-item">
                            <div class="logo">
                                <a href="#"><img src="assets/images/logo_fpt.png" alt="Onix Digital TemplateMo"></a>
                            </div>
                            <a href="#">daihocfpt@fpt.edu.vn</a>
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="services footer-item">
                            <h4>HÀ NỘI</h4>
                            <ul>
                                <li><a href="#">Khu Giáo dục và Đào tạo – Khu Công nghệ cao Hòa Lạc – Km29 Đại lộ Thăng Long, H. Thạch Thất, TP. Hà Nội</a></li>
                                <li><a href="#">Điện thoại: 024 7300 1866</a></li>

                                <li><a href="#">Email: daihocfpt@fpt.edu.vn</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="community footer-item">
                            <h4>TP.HỒ CHÍ MINH</h4>
                            <ul>
                                <li><a href="#">Lô E2a-7, Đường D1 Khu Công nghệ cao, P. Long Thạnh Mỹ, TP. Thủ Đức, TP. Hồ Chí Minh</a></li>
                                <li><a href="#">Điện thoại: 028 7300 1866</a></li>
                                <li><a href="#">Email: daihocfpt@fpt.edu.vn</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="community footer-item">
                            <h4>ĐÀ NẴNG</h4>
                            <ul>
                                <li><a href="#">Khu đô thị công nghệ FPT Đà Nẵng, P. Hoà Hải, Q. Ngũ Hành Sơn, TP. Đà Nẵng</a></li>
                                <li><a href="#">Điện thoại: 0236 730 1866</a></li>
                                <li><a href="#">Email: daihocfpt@fpt.edu.vn</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="copyright">
                            <p>Copyright © 2023 FPT University. All rights reserved. 
                                <br>
                                Designed by <a rel="nofollow" href="https://templatemo.com" title="free CSS templates">Group 4</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- scroll to top -->
        <button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-arrow-up"></i></button>


        <!-- Scripts -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/owl-carousel.js"></script>
        <script src="assets/js/animation.js"></script>
        <script src="assets/js/imagesloaded.js"></script>
        <script src="assets/js/custom.js"></script>
        <script src="assets/js/scroll_to_top.js"></script>

        <script>
            function showToast() {
                const successToast = document.getElementById('success-toast');
                successToast.classList.remove('hide');
                successToast.classList.add('show');
                setTimeout(() => {
                    successToast.classList.remove('show');
                    successToast.classList.add('hide');
                }, 5000);
            }
            var status = document.getElementById("status").value;
            if (status === "success") {
                document.querySelector(".toast-body").innerText = "WELCOME TO FLM";
                showToast();
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
    </body>
</html>