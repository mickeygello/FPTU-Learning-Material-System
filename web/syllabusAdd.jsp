<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
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

        <!--navbar doc-->
        <!--Boxicons--> 
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/style_dashboard.css">

        <style>
            body{
                background-color: white;
            }

            #heading{
                font-size: 30px;
                color: black;
                text-transform: uppercase;
                font-weight: bold;
                text-align: center;
                margin-bottom: 15px;
            }

            .btn-11,
            .btn-11 *,
            .btn-11 :after,
            .btn-11 :before,
            .btn-11:after,
            .btn-11:before {
                border: 0 solid;
                box-sizing: border-box;
            }
            .btn-11 {
                -webkit-tap-highlight-color: transparent;
                -webkit-appearance: button;
                background-color: #90d49f;
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
            .btn-11:disabled {
                cursor: default;
            }
            .btn-11:-moz-focusring {
                outline: auto;
            }
            .btn-11 svg {
                display: block;
                vertical-align: middle;
            }
            .btn-11 [hidden] {
                display: none;
            }
            .btn-11 {
                border-radius: 99rem;
                border-width: 2px;
                overflow: hidden;
                padding: 0.8rem 3rem;
                position: relative;
            }
            .btn-11 span {
                mix-blend-mode: difference;
            }
            .btn-11:before {
                -webkit-animation: bg-scroll 3s linear infinite;
                animation: bg-scroll 3s linear infinite;
                -webkit-animation-play-state: paused;
                animation-play-state: paused;
                background: repeating-linear-gradient(
                    45deg,
                    hsla(0, 0%, 100%, 0.2),
                    hsla(0, 0%, 100%, 0.2) 0.7%,
                    transparent 0,
                    transparent 4%
                    );
                content: "";
                display: block;
                height: 300%;
                left: -100%;
                opacity: 0;
                position: absolute;
                top: 0;
                transition: opacity 0.3s, background-color 0.2s;
                width: 300%;
            }
            .btn-11:hover:before {
                -webkit-animation-play-state: running;
                animation-play-state: running;
                opacity: 1;
            }
            .btn-11:active:before {
                background-color: #fff;
            }
            @-webkit-keyframes bg-scroll {
                0% {
                    transform: translateX(0);
                }
                to {
                    transform: translateX(33%);
                }
            }
            @keyframes bg-scroll {
                0% {
                    transform: translateX(0);
                }
                to {
                    transform: translateX(33%);
                }
            }

        </style>

    </head>
    <body>
        <!-- ***** Header Area Start ***** -->
        <!-- SIDEBAR -->
        <jsp:include page="sidebar.jsp"/>
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
                            <a class="active" href="#">Create Syllabus</a>
                        </li>
                    </ul>
                </div>
            </div>

            <ul class="box-info">
                <li>
                    <i class='bx bxs-calendar-check' ></i>
                    <span class="text">
                        <h3>PO</h3>
                        <p>34</p>
                    </span>
                </li>
                <li>
                    <i class='bx bxs-calendar-check' ></i>
                    <span class="text">
                        <h3>Question</h3>
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
        </main>
        <!-- MAIN -->
        <!-- ***** Header Area End ***** -->

        <!--form add syllabus start-->

        <!--        <div class="container" style="margin-top: 5rem;">
                    <div class="login-box">
                        <h2 id="heading" style="margin-bottom: 2rem;">Create Syllabus</h2>
                        <div>
                            <form action="addSyllabus" method="post">
                                <label style="font-weight: bold;"> Syllabus ID </label>
                                <input type="text" name="SyllabusID" placeholder="" class="form-control" style="margin-bottom: 1rem;" required/>
        
                                <label style="font-weight: bold;"> Subject Code </label>
                                <input type="text" name="SubjectCode" placeholder="" class="form-control" style="margin-bottom: 1rem;" required/>
        
                                <label style="font-weight: bold;"> Syllabus Name </label>
                                <textarea rows="2" name="SyllabusName" placeholder="" class="form-control" style="margin-bottom: 1rem;" required></textarea>
        
                                <label style="font-weight: bold;"> is Active (Active/Inactive) </label>
                                <input type="text" name="isActive" placeholder="" class="form-control" style="margin-bottom: 1rem;" required="Active/Deactive" id="valiadateActive" onclick="validateAcive()"/>
        
                                <label style="font-weight: bold;"> is Approved (Approved/Depproved)</label>
                                <input type="text" name="isApproved" placeholder="" class="form-control" style="margin-bottom: 1rem;" required="Approved/Deapproved" id="valiadateApproved" onclick="valiadateApproved()"/>
        
                                <label style="font-weight: bold;"> DecisionNo MM/dd/yyyy </label>
                                <textarea rows="2" name="DecisionNo" placeholder="" style="margin-bottom: 1rem;" class="form-control"></textarea>
        
                                <button class="btn-11" type="submit" style="margin-top: 2rem;" onclick="showSuccessAdd();" id="button">
                                    <span>Add Syllabus</span>
                                </button>
        
                            </form>
                        </div>
                    </div>
                </div>-->

        <div style="margin-top: 3rem;">
            <div style="display: flex; justify-content: center">
                <form action="addSyllabus" method="post" style="padding: 5px; width: 95%">
                    <div class="row">
                        <div class="col-md-12">
                            <label style="font-weight: bold">Subject Code: </label>
                            <input type="text" name="subjectCode" class="form-control">
                            <!--                            <select name="subjectCode" class="form-control" required>
                            <%--<c:forEach items="${s}" var="s">--%>
                                <option value="${s.subjectCode}">${s.subjectCode}</option>
                            <%--</c:forEach>--%>
                        </select>    -->
                        </div>
                    </div>

                    <div class="mt-3">   
                        <label style="font-weight: bold">Syllabus Name: <span style="color:red;">*</span></label>
                        <input type="text" name="sName" class="form-control" required>
                    </div>

                    <div class="mt-3">
                        <label style="font-weight: bold">Syllabus English: </label>
                        <input type="text" name="sEnglish" class="form-control">
                    </div>

                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label style="font-weight: bold">NoCredit: <span style="color:red;">*</span></label>
                            <input type="text" name="noCredit" class="form-control" required>
                        </div>
                        <div class="col-md-6">
                            <label style="font-weight: bold">Degree Level: <span style="color:red;">*</span></label>
                            <input type="text" name="degreeLevel" class="form-control" required>
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label style="font-weight: bold">Scoring Scale: <span style="color:red;">*</span></label>
                            <input type="text" name="scoringScale" class="form-control" required>
                        </div>
                        <div class="col-md-6">
                            <label style="font-weight: bold">DecisionNo MM/dd/yyyy: <span style="color:red;">*</span></label>
                            <input type="text" name="decisionNo" class="form-control" required>
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label style="font-weight: bold">MinAvgMarkToPass: <span style="color:red;">*</span></label>
                            <input type="text" name="minAvgMarkToPass" class="form-control" required>
                        </div>
                        <div class="col-md-6">
                            <label style="font-weight: bold">Approved Date:</label>
                            <input type="text" name="approvedDate" class="form-control">
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label style="font-weight: bold">IsActive: <span style="color:red;">*</span></label>
                            <input type="text" name="isActive" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label style="font-weight: bold">Is Approved: <span style="color:red;">*</span></label>
                            <input type="text" name="isApproved" class="form-control">
                        </div>
                    </div>

                    <div class="mt-3">
                        <label style="font-weight: bold">Time Allocation: <span style="color:red;">*</span></label>
                        <textarea style="height: 250px" type="text" name="timeAllocation" class="form-control" required></textarea>
                    </div>

                    <div class="mt-3">
                        <label style="font-weight: bold">Pre-Requisite: </label>
                        <textarea style="height: 250px" type="text" name="preRequisite" class="form-control"></textarea>
                    </div>

                    <div class="mt-3">
                        <label style="font-weight: bold">Description:</label>
                        <textarea style="height: 250px"  name="description" class="form-control"></textarea>
                    </div>

                    <div class="mt-3">
                        <label style="font-weight: bold">Student Task: <span style="color:red;">*</span></label>
                        <textarea style="height: 250px"  name="studentTask" class="form-control" required></textarea>
                    </div>

                    <div class="mt-3">
                        <label style="font-weight: bold">Tools:</label>
                        <textarea style="height: 250px"  name="tools" class="form-control"></textarea>
                    </div>

                    <div class="mt-3">
                        <label style="font-weight: bold">Note: </label>
                        <textarea style="height: 250px"  name="note" class="form-control"></textarea>
                    </div>

                    <button class="btn-11" type="submit" style="margin-top: 2rem;" onclick="showSuccessAdd();" id="button">
                        <span>Add Syllabus</span>
                    </button>

                </form>
            </div>
        </div>

        <!--form add syllabus end-->

        <script src="css/Admin_dashboard.js"></script>
        <script>
                    function showSuccessAdd() {
                        alert('Create data success!!!');
                    }

//            function validateAcive(){
//                var checkActive = document.getElementById("validateAcive").value;
//                if(checkActive.subString('')){
//                    
//                }
//            }
        </script>

        <!--footer section start-->
        <jsp:include page="footer1.jsp"/>
        <!--footer section end-->

    </body>
</html>
