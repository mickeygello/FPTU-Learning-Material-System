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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

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
            /*            table{
                            width:95%;
            
                             for custom scrollbar for webkit browser
            
                            ::-webkit-scrollbar {
                                width: 6px;
                            }
                            ::-webkit-scrollbar-track {
                                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
                            }
                            ::-webkit-scrollbar-thumb {
                                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
                            }
                        }*/

            /*css button*/
            .btn-52,
            .btn-52 *,
            .btn-52 :after,
            .btn-52 :before,
            .btn-52:after,
            .btn-52:before {
                border: 0 solid;
                box-sizing: border-box;
            }
            .btn-52 {
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
                line-height: 1.5;
                margin: 0;
                -webkit-mask-image: -webkit-radial-gradient(#000, #fff);
                padding: 0;
            }
            .btn-52:disabled {
                cursor: default;
            }
            .btn-52:-moz-focusring {
                outline: auto;
            }
            .btn-52 svg {
                display: block;
                vertical-align: middle;
            }
            .btn-52 [hidden] {
                display: none;
            }
            .btn-52 {
                border: 1px solid;
                border-radius: 999px;
                box-sizing: border-box;
                display: block;
                font-weight: 900;
                overflow: hidden;
                padding: 1.2rem 3rem;
                position: relative;
                text-transform: uppercase;
            }
            .btn-52 .original {
                background: #82c4c4;
                color: #fff;
                display: grid;
                inset: 0;
                place-content: center;
                position: absolute;
                transition: transform 0.2s;
            }
            .btn-52:hover .original {
                transform: translateY(100%);
            }
            .btn-52 .letters {
                display: inline-flex;
            }
            .btn-52 span {
                opacity: 0;
                transform: translateY(-15px);
                transition: transform 0.2s, opacity 0.2s;
            }
            .btn-52:hover span {
                opacity: 1;
                transform: translateY(0);
            }
            .btn-52:hover span:nth-child(2) {
                transition-delay: 0.1s;
            }
            .btn-52:hover span:nth-child(3) {
                transition-delay: 0.2s;
            }
            .btn-52:hover span:nth-child(4) {
                transition-delay: 0.3s;
            }
            .btn-52:hover span:nth-child(5) {
                transition-delay: 0.4s;
            }
            .btn-52:hover span:nth-child(6) {
                transition-delay: 0.5s;
            }

            .table-bordered tr td:first-child{
                background-color: #ebedeb;
                color: black;
                font-weight: bold;
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
                            <a class="active" href="#">Syllabus Details</a>
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

        <!--syllabus detail section start-->
        <div style="margin-top: 3rem;">
            <!--<h1 id="heading" style="margin-bottom: 2rem;">Syllabus Details</h1>-->
            <div style="display: flex; justify-content: center">
                <form action="SyllabusDetail" method="get" style="padding: 5px; width: 95%">
                    <table class="table table-bordered">
                        <tr>
                            <td>Syllabus ID: </td>
                            <td>${requestScope.s.sID}</td>
                        </tr>
                        <tr>
                            <td>Syllabus Name: </td>
                            <td>${s.sName}</td>
                        </tr>
                        <tr>
                            <td>Syllabus English: </td>
                            <td>${s.sEnglish}</td>
                        </tr>
                        <tr>
                            <td>Subject Code: </td>
                            <td>${s.subjectCode}</td>
                        </tr>
                        <tr>
                            <td>NoCredit: </td>
                            <td>${s.noCredit}</td>
                        </tr>
                        <tr>
                            <td>Degree Level: </td>
                            <td>${s.degreeLevel}</td>
                        </tr>
                        <tr>
                            <td>Time Allocation: </td>
                            <td>${s.timeAllocation}</td>
                        </tr>
                        <tr>
                            <td>Pre-Requisite: </td>
                            <td>${s.preRequisite}</td>
                        </tr>
                        <tr>
                            <td>Description: </td>
                            <td>${s.description}</td>
                        </tr>
                        <tr>
                            <td>StudentTasks: </td>
                            <td>${s.studentTask}</td>
                        </tr>
                        <tr>
                            <td>Tools: </td>
                            <td>${s.tools}</td>
                        </tr>
                        <tr>
                            <td>Scoring Scale: </td>
                            <td>${s.scoringScale}</td>
                        </tr>
                        <tr>
                            <td>DecisionNo MM/dd/yyyy:</td>
                            <td>${s.decisionNo}</td>
                        </tr>
                        <tr>
                            <td>Is Approved: </td>
                            <td>${s.isApproved}</td>
                        </tr>
                        <tr>
                            <td>Note: </td>
                            <td>${s.note}</td>
                        </tr>
                        <tr>
                            <td>MinAvgMarkToPass: </td>
                            <td>${s.minAvgMarkToPass}</td>
                        </tr>
                        <tr>
                            <td>Is Active: </td>
                            <td>${s.isActive}</td>
                        </tr>
                        <tr>
                            <td>ApprovedDate: </td>
                            <td>${s.approvedDate}</td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>


        <!--button-->
        <div class="d-flex justify-content-around" style="margin-top: 2rem;">
            <a href="viewSyllabusList#lists">
                <button class="btn-52">
                    <div class="original">Return List</div>
                    <div class="letters">
                        <!-- Place each letter in its own element -->
                        <span>R</span>
                        <span>E</span>
                        <span>T</span>
                        <span>U</span>
                        <span>R</span>
                        <span>N</span>
                    </div>
                </button>
            </a>
            <c:if test="${sessionScope.roleName == 'admin' || sessionScope.roleName == 'crdd' || sessionScope.roleName == 'syllabus_designer'}">
                <a href="EditSyllabus?sid=${s.sID}">
                    <button class="btn-52">
                        <div class="original">Edit</div>
                        <div class="letters">
                            <!-- Place each letter in its own element -->
                            <span>E</span>
                            <span>D</span>
                            <span>I</span>
                            <span>T</span>
                        </div>
                    </button>
                </a>
            </c:if>
        </div>
        <!--syllabus detail section end-->

        <!--LO, Question, Material section start-->
        <div style="margin-top: 3rem;">
            <div style="width: 95%; margin-left: 3rem">
                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-item nav-link active" id="nav-PO-tab" data-toggle="tab" href="#nav-PO" role="tab" aria-controls="nav-PO" aria-selected="true">PO</a>
                        <a class="nav-item nav-link" id="nav-question-tab" data-toggle="tab" href="#nav-question" role="tab" aria-controls="nav-question" aria-selected="false">Question</a>
                        <a class="nav-item nav-link" id="nav-material-tab" data-toggle="tab" href="#nav-material" role="tab" aria-controls="nav-material" aria-selected="false">Material</a>
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-PO" role="tabpanel" aria-labelledby="nav-PO-tab">
                        <jsp:include page="viewPO.jsp"/>
                    </div>
                    <div class="tab-pane fade" id="nav-question" role="tabpanel" aria-labelledby="nav-question-tab">
                        <jsp:include page="viewQuestion.jsp"/>
                    </div>
                    <div class="tab-pane fade" id="nav-material" role="tabpanel" aria-labelledby="nav-material-tab">
                        Sint sit mollit irure quis est nostrud cillum consequat Lorem esse do quis dolor esse fugiat sunt do. 
                        Eu ex commodo veniam Lorem aliquip laborum occaecat qui Lorem esse mollit dolore anim cupidatat. 
                        Deserunt officia id Lorem nostrud aute id commodo elit eiusmod enim irure amet eiusmod qui reprehenderit 
                        nostrud tempor. Fugiat ipsum excepteur in aliqua non et quis aliquip ad irure in labore cillum elit enim. 
                        Consequat aliquip incididunt ipsum et minim laborum laborum laborum et cillum labore. Deserunt adipisicing 
                        cillum id nulla minim nostrud labore eiusmod et amet. Laboris consequat consequat commodo non ut non aliquip 
                        reprehenderit nulla anim occaecat. Sunt sit ullamco reprehenderit irure ea ullamco Lorem aute nostrud magna.
                    </div>
                </div>
            </div>
        </div>
        <!--LO, Question, Material section end-->

        <!--footer section start-->
        <jsp:include page="footer1.jsp"/>
        <!--footer section end-->

        <script src="css/Admin_dashboard.js"></script>

<!--        <script>
            function messageSuccess(id) {
                var option = confirm('Are you sure to delete?');
                if (option === true) {
                    window.document.location.href = "deletePO?sid=" + id;
                }
            }

        </script>-->

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
