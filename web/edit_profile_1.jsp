<%-- 
    Document   : edit_profile
    Created on : Feb 5, 2023, 3:44:15 AM
    Author     : 84379
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User Profile</title>
        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
        <link rel="stylesheet" href="assets/css/animated.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/scroll_to_top.css">

        <style>
            body{
                margin-top:20px;
                background-image: url(assets/images/banner_fpt.jpg);
                background-repeat: no-repeat;
                background-size: cover;
            }
            
            .logo{
                align-items: center;
                justify-content: center;
                margin-bottom: 2rem;
            }
         
             .container{
                 padding: 2rem 0;
             }
        </style>
    </head>
    <body>
        <c:set var="u" value="${requestScope.user}"/>
        <div class="container">
            <div class="row logo">
                <img class="col-md-4 img-fluid align-self-center" src="assets/images/logo_fpt.png" alt="image logo"/>
            </div>
            <div class="row flex-lg-nowrap">
                <div class="col-12 col-lg-auto mb-3" style="width: 200px;">
                    <div class="card p-3">
                        <div class="e-navlist e-navlist--active-bg">
                            <ul class="nav">
                                <li class="nav-item"><a class="nav-link px-2 active" href="viewProfile"><i class="fa fa-user-secret"></i><span> Proflie</span></a></li>
                                <li class="nav-item"><a class="nav-link px-2" href="EditProfile" target="__blank"><i class="fa fa-fw fa-cog mr-1"></i><span>Edit Profile</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="row">
                        <div class="col mb-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="e-profile">
                                        <div class="row">
                                            <div class="col-12 col-sm-auto mb-3">
                                                <div class="mx-auto" style="width: 140px;">
                                                    <div class="d-flex justify-content-center align-items-center rounded" style="height: 140px; background-color: rgb(233, 236, 239);">
                                                        <span style="color: rgb(166, 168, 170); font: bold 8pt Arial;">140x140</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
                                                <div class="text-center text-sm-left mb-2 mb-sm-0">
                                                    <h4 class="pt-sm-2 pb-1 mb-0 text-nowrap">${u.uname}</h4>
                                                    <p class="mb-0">${u.roleID.name}</p>
                                                    <div class="mt-2">
                                                        <button class="btn btn-primary" type="button">
                                                            <i class="fa fa-fw fa-camera"></i>
                                                            <span>Change Photo</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="text-center text-sm-right">
                                                    <span class="badge badge-secondary">administrator</span>
                                                </div>
                                            </div>
                                        </div>
                                        <ul class="nav nav-tabs">
                                            <li class="nav-item"><a href="" class="active nav-link">Settings</a></li>
                                        </ul>
                                        <div class="tab-content pt-3">
                                            <div class="tab-pane active">
                                                <form class="form" novalidate="" action="" method="post">
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="row">
                                                                <div class="col">
                                                                    <div class="form-group">
                                                                        <label>Full Name</label>
                                                                        <input class="form-control" type="text" name="name" value="${u.uname}">
                                                                    </div>
                                                                </div>
                                                                <div class="col">
                                                                    <div class="form-group">
                                                                        <label>Email</label>
                                                                        <input class="form-control" type="text" name="email" value="${u.uemail}">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <div class="form-group">
                                                                        <label>Phone Number</label>
                                                                        <input class="form-control" type="text" name="pNumber" value="${u.umobile}">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col mb-3">
                                                                    <div class="form-group">
                                                                        <label>Description</label>
                                                                        <textarea class="form-control" rows="5" placeholder="Description">description is in beta, please ignore this section</textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col d-flex justify-content-end">
                                                            <button class="btn btn-primary" type="submit">Save Changes</button>
                                                        </div>
                                                    </div>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-md-3 mb-3">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <div class="px-xl-3">
                                        <button class="btn btn-block btn-secondary">
                                            <i class="fa fa-sign-out"></i>
                                            <span>Logout</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-body">
                                    <h6 class="card-title font-weight-bold">Support</h6>
                                    <p class="card-text">Should you need any further information, please do not hesitate to contact us</p>
                                    <button type="button" class="btn btn-primary"><a href="index.jsp" style="color:white; text-decoration: none">Contact Us</a></button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
