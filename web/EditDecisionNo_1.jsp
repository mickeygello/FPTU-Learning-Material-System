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
                            width:100%;
            
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
                        }
            
                        td{
                            color: white;
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
                <form method="post" action="EditDecisionNo" style="padding: 5px; width: 95%">
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label style="font-weight: bold">DecisionNo:</label>
                            <input type="text" name="decision_no" value="${d.decision_no}" class="form-control" readonly>
                        </div>
                        <div class="col-md-6">
                            <label style="font-weight: bold">ApprovedDate (MM/dd/yyyy): <span style="color:red;">*</span></label>
                            <input type="text" name="approvedDate" value="${d.approvedDate}" class="form-control" required>
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label style="font-weight: bold">CreateDate (MM/dd/yyyy): <span style="color:red;">*</span></label>
                            <input type="text" name="createDate" value="${d.createDate}" class="form-control" required>
                        </div>
                        <div class="col-md-6">
                            <label style="font-weight: bold">FileName: </label>
                            <input type="text" name="fileName" value="${d.fileName}" class="form-control">
                        </div>
                    </div>

                    <div class="mt-3">
                        <label style="font-weight: bold">DecisionName: <span style="color:red;">*</span></label>
                        <textarea style="height: 100px" type="text" name="decisionName" class="form-control" required>${d.decisionName}</textarea>
                    </div>

                    <div class="mt-3">
                        <label style="font-weight: bold">Note: </label>
                        <textarea style="height: 250px" type="text" name="note" class="form-control">${d.note}</textarea>
                    </div>

                    <div class="d-flex justify-content-around" style="margin-top: 2rem;">
                        <a href="viewSyllabusList#lists">
                            <button class="btn-52">
                                <div class="original">Return List</div>
                                <div class="letters">
                                    <span>R</span>
                                    <span>E</span>
                                    <span>T</span>
                                    <span>U</span>
                                    <span>R</span>
                                    <span>N</span>
                                </div>
                            </button>
                        </a>

                        <a href="EditDecisionNo">
                            <button class="btn-52" type="submit">
                                <div class="original">Update</div>
                                <div class="letters">
                                    <span>U</span>
                                    <span>P</span>
                                    <span>D</span>
                                    <span>A</span>
                                    <span>T</span>
                                    <span>E</span>
                                </div>
                            </button>
                        </a>
                    </div>
                </form>
            </div>
        </div>   
        <!--syllabus detail section end-->

        <!--footer section start-->
        <jsp:include page="footer1.jsp"/>
        <!--footer section end-->

        <script src="css/Admin_dashboard.js"></script>
    </body>
</html>
