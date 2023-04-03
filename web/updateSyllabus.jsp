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
                background-color: #ccfbff4d;
            }

            .wrapper{
                width: 100%;
                background: linear-gradient(45deg, #49a09d, #5f2c82);
                margin: 50px auto;
                box-shadow: 2px 2px 4px rgba(0,0,0,0.125);
                padding: 30px;
            }

            .wrapper .title{
                font-size: 24px;
                font-weight: 700;
                margin-bottom: 25px;
                color: #a8f0e7;
                text-transform: uppercase;
                text-align: center;
            }

            .wrapper .form{
                width: 100%;
            }

            .wrapper .form .inputfield{
                margin-bottom: 15px;
                display: flex;
                align-items: center;
            }

            .wrapper .form .inputfield label{
                width: 200px;
                color: white;
                margin-right: 10px;
                font-size: 14px;
            }

            .wrapper .form .inputfield .input,
            .wrapper .form .inputfield .textarea{
                width: 100%;
                outline: none;
                border: 1px solid #d5dbd9;
                font-size: 15px;
                padding: 8px 10px;
                border-radius: 3px;
                transition: all 0.3s ease;
            }

            .wrapper .form .inputfield .textarea{
                width: 100%;
                height: 125px;
                resize: none;
            }

            .wrapper .form .inputfield .custom_select{
                position: relative;
                width: 100%;
                height: 37px;
            }

            .wrapper .form .inputfield .custom_select:before{
                content: "";
                position: absolute;
                top: 12px;
                right: 10px;
                border: 8px solid;
                border-color: #d5dbd9 transparent transparent transparent;
                pointer-events: none;
            }

            .wrapper .form .inputfield .custom_select select{
                -webkit-appearance: none;
                -moz-appearance:   none;
                appearance:        none;
                outline: none;
                width: 100%;
                height: 100%;
                border: 0px;
                padding: 8px 10px;
                font-size: 15px;
                border: 1px solid #d5dbd9;
                border-radius: 3px;
            }


            .wrapper .form .inputfield .input:focus,
            .wrapper .form .inputfield .textarea:focus,
            .wrapper .form .inputfield .custom_select select:focus{
                border: 1px solid #fec107;
            }

            .wrapper .form .inputfield p{
                font-size: 14px;
                color: #757575;
            }
            .wrapper .form .inputfield .check{
                width: 15px;
                height: 15px;
                position: relative;
                display: block;
                cursor: pointer;
            }
            .wrapper .form .inputfield .check input[type="checkbox"]{
                position: absolute;
                top: 0;
                left: 0;
                opacity: 0;
            }
            .wrapper .form .inputfield .check .checkmark{
                width: 15px;
                height: 15px;
                border: 1px solid #fec107;
                display: block;
                position: relative;
            }
            .wrapper .form .inputfield .check .checkmark:before{
                content: "";
                position: absolute;
                top: 1px;
                left: 2px;
                width: 5px;
                height: 2px;
                border: 2px solid;
                border-color: transparent transparent #fff #fff;
                transform: rotate(-45deg);
                display: none;
            }
            .wrapper .form .inputfield .check input[type="checkbox"]:checked ~ .checkmark{
                background: #fec107;
            }

            .wrapper .form .inputfield .check input[type="checkbox"]:checked ~ .checkmark:before{
                display: block;
            }

            .wrapper .form .inputfield .btn{
                width: 100%;
                padding: 8px 10px;
                font-size: 15px;
                border: 0px;
                background:  #fec107;
                color: #fff;
                cursor: pointer;
                border-radius: 3px;
                outline: none;
            }

            .wrapper .form .inputfield .btn:hover{
                background: #ffd658;
            }

            .wrapper .form .inputfield:last-child{
                margin-bottom: 0;
            }

            .btn-25,
            .btn-25 *,
            .btn-25 :after,
            .btn-25 :before,
            .btn-25:after,
            .btn-25:before {
                border: 0 solid;
                box-sizing: border-box;
            }
            .btn-25 {
                -webkit-tap-highlight-color: transparent;
                -webkit-appearance: button;
                background-color: #000;
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
            .btn-25:disabled {
                cursor: default;
            }
            .btn-25:-moz-focusring {
                outline: auto;
            }
            .btn-25 svg {
                display: block;
                vertical-align: middle;
            }
            .btn-25 [hidden] {
                display: none;
            }
            .btn-25 {
                --background: #69d1c5;
                background: none;
                overflow: hidden;
                padding: 0.8rem 3rem;
                position: relative;
            }
            .btn-25 span {
                display: block;
                position: relative;
                transition: transform 0.2s ease;
            }
            .btn-25:after,
            .btn-25:before {
                --tilt: 20px;
                background: #fff;
                -webkit-clip-path: polygon(0 50%, 0 0, 100% 0, 100% 50%, 100% 100%, 0 100%);
                clip-path: polygon(0 50%, 0 0, 100% 0, 100% 50%, 100% 100%, 0 100%);
                content: "";
                display: block;
                height: 100%;
                left: 0;
                position: absolute;
                top: 0;
                transition: -webkit-clip-path 0.2s ease;
                transition: clip-path 0.2s ease;
                transition: clip-path 0.2s ease, -webkit-clip-path 0.2s ease;
                width: 100%;
                z-index: -1;
            }
            .btn-25:after {
                --thickness: 5px;
                background: var(--background);
                height: calc(100% - var(--thickness) * 2);
                left: var(--thickness);
                top: var(--thickness);
                width: calc(100% - var(--thickness) * 2);
            }
            .btn-25:hover:after,
            .btn-25:hover:before {
                -webkit-clip-path: polygon(
                    0 50%,
                    var(--tilt) 0,
                    calc(100% - var(--tilt)) 0,
                    100% 50%,
                    calc(100% - var(--tilt)) 100%,
                    var(--tilt) 100%
                    );
                clip-path: polygon(
                    0 50%,
                    var(--tilt) 0,
                    calc(100% - var(--tilt)) 0,
                    100% 50%,
                    calc(100% - var(--tilt)) 100%,
                    var(--tilt) 100%
                    );
            }
 
        </style>

    </head>
    <body>
        <!-- ***** Header Area Start ***** -->
        <!-- SIDEBAR -->
        <jsp:include page="sidebar.jsp"/>
        <div class="main-image">
            <div class="heading_banner container">
                <h1><span>Syllabus</span></h1>
                <a class="button banner_button" href="#lists">scroll down to see website content &nbsp;<i class="fa fa-hand-point-down"></i></a>
            </div>
        </div>
        <!-- ***** Header Area End ***** -->

        <!--update syllabus section start-->
        <div class="container">
            <div class="wrapper">
                <div class="title">
                    Update Syllabus
                </div>
                <div class="form">
                    <form action="updateSyllabus" method="post">
                        <div class="inputfield">
                            <label>Syllabus ID</label>
                            <input type="text" class="input" value="${s.sID}" name="SyllabusID" readonly>
                        </div>  
                        <div class="inputfield">
                            <label>Subject Code</label>
                            <input type="text" class="input" value="${s.subjectCode}" name="SubjectCode" readonly>
                        </div>  
                        <div class="inputfield">
                            <label>Syllabus Name</label>
                            <textarea class="textarea" name="SyllabusName">${s.sName}</textarea>
                        </div> 

                        <div class="inputfield">
                            <label>Is Active (Active/Inactive)</label>
                            <input type="text" class="input" value="${s.isActive}" name="isActive">
                        </div>  
                        <div class="inputfield">
                            <label>Is Approved (Approved/Deapproved)</label>
                            <input type="text" class="input" value="${s.isApproved}" name="isApproved">
                        </div>  
                        <div class="inputfield">
                            <label>DecisionNo MM/dd/yyyy</label>
                            <textarea class="textarea" name="decisionNo">${s.decisionNo}</textarea>
                        </div>

                        <button class="btn-25" type="submit" style="margin-left: 45%; margin-top: 2rem;" onclick="showSuccessUpdate();">
                            <span>Update</span>
                        </button>

                    </form>
                </div>
            </div>
        </div>
        <!--update syllabus section end-->

        <!--toast message-->
        <div id="toast"></div>

        <!--footer section start-->
        <jsp:include page="footer1.jsp"/>
        <!--footer section end-->

        <script src="css/Admin_dashboard.js"></script>
        <script>
            function showSuccessUpdate() {
                alert('Update data success!!!');
            }

        </script>
    </body>
</html>
