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
        <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="../../assets/css/fontawesome.css">
        <link rel="stylesheet" href="../../assets/css/templatemo-onix-digital.css">
        <link rel="stylesheet" href="../../assets/css/animated.css">
        <link rel="stylesheet" href="../../assets/css/owl.css">
        <link rel="stylesheet" href="../../assets/css/scroll_to_top.css">

        <!--
        
        TemplateMo 565 Onix Digital
        
        https://templatemo.com/tm-565-onix-digital
        
        -->
        
        <style>
        ul#main-menu .sub-menu{
            display: none;
        }
        ul#main-menu li:hover .sub-menu{
            display: block;
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
        <jsp:include page="../navigation/header_1.jsp"/>
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
                <img src="../../assets/images/services-right-dec.png" alt="">
            </div>
            <div class="container">
                <div class="services-left-dec">
                    <img src="../../assets/images/services-left-dec.png" alt="">
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
                                <div class="icon"><img src="../../assets/images/service-icon-01.png" alt=""></div>
                                <p>OOP with Java Lab</p>
                            </div>
                            <div class="item">
                                <h4>DBI202</h4>
                                <div class="icon"><img src="../../assets/images/service-icon-02.png" alt=""></div>
                                <p>Database System</p>
                            </div>
                            <div class="item">
                                <h4>JPD113</h4>
                                <div class="icon"><img src="../../assets/images/service-icon-03.png" alt=""></div>
                                <p>Japaneses Elemantary A1.1</p>
                            </div>
                            <div class="item">
                                <h4>JPD123</h4>
                                <div class="icon"><img src="../../assets/images/service-icon-04.png" alt=""></div>
                                <p>Japanese Elemantary A1.2</p>
                            </div>
                            <div class="item">
                                <h4>DTG121</h4>
                                <div class="icon"><img src="../../assets/images/service-icon-01.png" alt=""></div>
                                <p>Visual Design Tool</p>
                            </div>
                            <div class="item">
                                <h4>CCO201</h4>
                                <div class="icon"><img src="../../assets/images/service-icon-02.png" alt=""></div>
                                <p>Corporate Communication</p>
                            </div>
                            <div class="item">
                                <h4>HCM202</h4>
                                <div class="icon"><img src="../../assets/images/service-icon-03.png" alt=""></div>
                                <p>HCM Ideology</p>
                            </div>
                            <div class="item">
                                <h4>MAS291</h4>
                                <div class="icon"><img src="../../assets/images/service-icon-04.png" alt=""></div>
                                <p>Statistic & Probability</p>
                            </div>
                            <div class="item">
                                <h4>PRJ301</h4>
                                <div class="icon"><img src="../../assets/images/service-icon-01.png" alt=""></div>
                                <p>Java Web Development</p>
                            </div>
                            <div class="item">
                                <h4>VNR202</h4>
                                <div class="icon"><img src="../../assets/images/service-icon-02.png" alt=""></div>
                                <p>History of CPV</p>
                            </div>
                            <div class="item">
                                <h4>CHN111</h4>
                                <div class="icon"><img src="../../assets/images/service-icon-03.png" alt=""></div>
                                <p>Elementary Chinese</p>
                            </div>
                            <div class="item">
                                <h4>VNC104</h4>
                                <div class="icon"><img src="../../assets/images/service-icon-04.png" alt=""></div>
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
                            <img src="../../assets/images/about_fpt1.jpg" alt="Two Girls working together">
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
                                                <img src="../../assets/images/service-icon-01.png" alt="image empty">
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
                                                <img src="../../assets/images/service-icon-02.png" alt="">
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
                                                <img src="../../assets/images/service-icon-03.png" alt="">
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
                <img src="../../assets/images/portfolio-left-dec.png" alt="">
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
                                    <img src="../../assets/images/portfolio-01.jpg" alt="">
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
                                    <img src="../../assets/images/portfolio-02.jpg" alt="">
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
                                    <img src="../../assets/images/portfolio-03.jpg" alt="">
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
                                    <img src="../../assets/images/portfolio-04.jpg" alt="">
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
                                    <img src="../../assets/images/portfolio-01.jpg" alt="">
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
                                    <img src="../../assets/images/portfolio-02.jpg" alt="">
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
                                    <img src="../../assets/images/portfolio-03.jpg" alt="">
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
                                    <img src="../../assets/images/portfolio-04.jpg" alt="">
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
                                    <img src="../../assets/images/portfolio-01.jpg" alt="">
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
                                    <img src="../../assets/images/portfolio-02.jpg" alt="">
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
                                    <img src="../../assets/images/portfolio-03.jpg" alt="">
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
                                    <img src="../../assets/images/portfolio-04.jpg" alt="">
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
                <img src="../../assets/images/tables-left-dec.png" alt="">
            </div>
            <div class="tables-right-dec">
                <img src="../../assets/images/tables-right-dec.png" alt="">
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
                            <h4>SWP391</h4>
                            <!--            <em>$160/mo</em>
                                        <span>$140</span>-->
                            <ul>
                                <li>Software development project</li>
                                <li>Approved</li>
                                <li>Active</li>
                            </ul>
                            <div class="main-blue-button-hover">
                                <a href="viewSyllabusList">Get Started</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="item second-item">
                            <h4>SWR302</h4>
                            <!--            <em>$240/mo</em>
                                        <span>$200</span>-->
                            <ul>
                                <li>Software Requirement</li>
                                <li>Approved</li>
                                <li>Active</li>
                            </ul>
                            <div class="main-blue-button-hover">
                                <a href="viewSyllabusList">Get Started</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="item third-item">
                            <h4>ITE302c</h4>
                            <!--            <em>$360/mo</em>
                                        <span>$280</span>-->
                            <ul>
                                <li>Ethics in IT</li>
                                <li>Approved</li>
                                <li>Active</li>
                            </ul>
                            <div class="main-blue-button-hover">
                                <a href="viewSyllabusList">Get Started</a>
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
                <img src="../../assets/images/videos-left-dec.png" alt="">
            </div>
            <div class="videos-right-dec">
                <img src="../../assets/images/videos-right-dec.png" alt="">
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
                                                    <img src="../../assets/images/video-thumb-01.png" alt="">
                                                    <div class="inner-content">
                                                        <h4>Introduction</h4>
                                                        <span>FPT University</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="thumb">
                                                    <img src="../../assets/images/video-thumb-02.png" alt="">
                                                    <div class="inner-content">
                                                        <h4>Subject</h4>
                                                        <span>FPT University</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="thumb">
                                                    <img src="../../assets/images/video-thumb-03.png" alt="Marketing">
                                                    <div class="inner-content">
                                                        <h4>Curriculum</h4>
                                                        <span>FPT University</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="thumb">
                                                    <img src="../../assets/images/video-thumb-04.png" alt="SEO Work">
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
                <img src="../../assets/images/contact-dec.png" alt="">
            </div>
            <div class="contact-left-dec">
                <img src="../../assets/images/contact-left-dec.png" alt="">
            </div>
        </div>

        <div class="footer-dec">
            <img src="../../assets/images/footer-dec.png" alt="">
        </div>

        <!--footer section start-->
        <jsp:include page="../navigation/footer.jsp"/>
        <!--footer section end-->

        <!-- scroll to top -->
        <button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-arrow-up"></i></button>


        <!-- Scripts -->
        <script src="../../vendor/jquery/jquery.min.js"></script>
        <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../../assets/js/owl-carousel.js"></script>
        <script src="../../assets/js/animation.js"></script>
        <script src="../../assets/js/imagesloaded.js"></script>
        <script src="../../assets/js/custom.js"></script>
        <script src="../../assets/js/scroll_to_top.js"></script>

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