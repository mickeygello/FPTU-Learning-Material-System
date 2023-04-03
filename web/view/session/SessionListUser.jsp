<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Materials</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"><!-- comment -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="css/style_banner.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
        <link rel="stylesheet" href="assets/css/animated.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/scroll_to_top.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <!--navbar doc-->
        <!--Boxicons--> 
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/style_dashboard.css">

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

        <%--<jsp:include page="../navigation/header1.jsp"/>--%>
        <!-- SIDEBAR -->
        <%--<jsp:include page="../navigation/AdDashboard.jsp"/>--%>
        <c:if test="${sessionScope.roleName != 'admin' and sessionScope.roleName != 'syllabus_designer'}">
            <jsp:include page="../navigation/header1.jsp"/>
        </c:if>




        <c:if test="${sessionScope.roleName == 'admin' or sessionScope.roleName == 'syllabus_designer'}">
            <section class="ftco-section" style="padding: 1em 0">
            </c:if>
            <c:if test="${sessionScope.roleName != 'admin' and sessionScope.roleName != 'syllabus_designer'}">
                <section class="ftco-section">
                </c:if>
                <div class="container">
                    <!--                <div class="row justify-content-center">
                                        <div class="col-md-6 text-center mb-5">
                                            <h2 class="heading-section">Subject Table</h2>
                                        </div>
                                    </div>-->
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="text-center mb-4" style=" font-weight: bold;">FPTU Session List</h1>
                            <div class="table-wrap">

                                <form method="get" action="listSession">
                                    <table class="auto-style1" style="margin: 15px;">
                                        <tr>
                                            <!--                    <td class="auto-style2" style="text-align: right">
                                                                    <label class="form-check-label" for="inlineFormCheck">
                                                                        Enter Material Description or Subject Code: 
                                                                    </label>
                                                                </td>-->
                                            <td>
                                                <div class="form-inline">
                                                    <div class="input-group">

                                                        <div class="row" style="width: 100%;">
                                                            <div class="col-md-6" style="width: 30%;">
                                                                <input  placeholder="Enter Topic or learning teaching type or student material or student task: " name="search"  type="text" id="txtKeyword" value="${requestScope.valueSearch}" class="form-control" style="width: 300px;border: 1px solid black; font-size: inherit; margin: 0 10px;" />

                                                            </div>

                                                            <div class="col-md-6" style="width: 70%;">
                                                                Syllabus ID:
                                                                <select id="select-state" name="opt" placeholder="Nhap syllabus ID..." class="form-control" style="width: 85%">
                                                                    <option value="0">All</option>
                                                                    <c:forEach items="${requestScope.dataSubject}" var="d">
                                                                        <option value="${d.sID}">${d.sID}: ${d.sName}</option>
                                                                    </c:forEach>
                                                                </select>


                                                            </div> 
                                                        </div>

                                                        <div class="row" style="width: 100%; margin-top: 20px">
                                                            <div class="col-md-6" style="width: 30%;">
                                                                DOWLOAD:
                                                                <select id="select-state" name="opt2" placeholder="Nhap syllabus ID..." class="form-control" style="width: 60%">
                                                                    <option value="0">All</option>
                                                                    <c:forEach items="${requestScope.data}" var="d">
                                                                        <option value="${d.download}">${d.download}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div class="col-md-6" style="width: 25%;">
                                                                <span class="input-group-btn">
                                                                    <input type="submit"  value="Search" id="btnSearch" class="btn btn-success" style="width:100px;" />
                                                                </span>
                                                            </div>
                                                            <div class="col-md-6" style="width: 25%;">
                                                                <c:if test="${sessionScope.roleName == 'admin' or sessionScope.roleName == 'syllabus_designer'}">
                                                                    <a class="btn btn-primary" href="editSession?id=-1">Add new</a>
                                                                </c:if>
                                                            </div>
                                                        </div>


                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                    </table>
                                </form>
                                <div class="container-fluid">
                                    <table class="table table-bordered" >
                                        <thead class="thead-primary">
                                            <tr>


                                                <th>Topic</th>
                                                <th>Learning Teaching Type</th>
                                                <th>LO</th>
                                                <th>ITU</th>
                                                <th>Student Material</th>
                                                <th>
                                                    <a>


                                                        Download
                                                    </a>
                                                </th>
                                                <!--<th>Student Task</th>-->
                                                <th>urls</th>
                                                <th>Syllabus ID</th>

                                                <c:if test="${sessionScope.roleName == 'admin' or sessionScope.roleName == 'syllabus_designer'}">
                                                    <th>Status</th>
                                                    <!--<th>Edit</th>-->
                                                    <th>Action</th>
                                                    </c:if>
                                            </tr>
                                        </thead>
                                        <tbody>


                                            <c:forEach items="${requestScope.data}" var="i">

                                                <tr>
                                                    <td>${i.topic}</td>
                                                    <td>${i.learning_teaching_type}</td>
                                                    <td>${i.lO}</td>
                                                    <td>${i.iTU}</td>
                                                    <td>${i.studentMaterial}</td>

                                                    <td>
                                                        <a href="${pageContext.request.contextPath}/download?id=${i.sesid}">${i.download}</a>
                                                    </td>
                                                    <!--<td>${i.studentTask}</td>-->
                                                    <td>${i.urls}</td>


                                                    <td>${i.syllabusID2.sID}</td>
                                                    <c:if test="${sessionScope.roleName == 'admin' or sessionScope.roleName == 'syllabus_designer'}">

                                                        <td>
                                                            <c:if test = "${(i.status == 1)}">
                                                                Active
                                                            </c:if>
                                                            <c:if test = "${(i.status == 0)}">
                                                                InActive
                                                            </c:if>
                                                        </td>


                                                        <td><a href="editSession?id=${i.sesid}" class="btn btn-warning"><i class="fa-sharp fa-solid fa-pen-to-square"></i></a>          
                                                        
                                                            <!--<button  onclick="cfDelete(${i.sesid})" class="btn btn-danger">Change Status</button>-->
                                                                            <button type="button" class="btn btn-danger" onclick="confirmDelete(${i.sesid})" style="margin-top: 15px"><i class="fa-sharp fa-solid fa-delete-left"></i></button>

                                                            <div class="modal fade" id="confirmDeleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                                <!--<div class="modal fade" id="confirmDeleteModal" tabindex="-1" role="dialog" aria-labelledby="confirmDeleteModalLabel" aria-hidden="true">-->
                                                                <div class="modal-dialog">
                                                                    <div class="modal-content">
                                                                        <div class="modal-header">
                                                                            <h5 class="modal-title" id="exampleModalLabel">Change Status</h5>
                                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                <span aria-hidden="true">&times;</span>
                                                                            </button>
                                                                        </div>
                                                                        <div class="modal-body">
                                                                            <p>Are you sure you want to change the status of this Session?</p>
                                                                            <form action="deleteSession" method="post">
                                                                                <input type="hidden" id="materialId" name="materialId" value="">
                                                                            </form>
                                                                        </div>
                                                                        <div class="modal-footer">
                                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                            <button type="submit" class="btn btn-primary" id="confirmDeleteButton">Ok</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        
                                                        </td>
                                                    </c:if>

                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section> 



            <c:if test="${param['index']==null }">   
                <c:set var = "index" scope = "page" value = "1"/>
            </c:if>
            <c:if test="${param['index']!=null}">
                <c:set var = "index" scope = "page" value = "${param['index']}"/>
            </c:if>
            <nav aria-label="...">
                <ul class="pagination">
                    <li class="page-item <c:if test="${index==1}">disabled
                        </c:if>">
                        <c:if test ="${requestScope.check != 'search'}">
                            <a class="page-link" href="listSession?index=${index-1}" >Previous</a>
                        </c:if>
                        <c:if test ="${requestScope.check == 'search'}">
                            <%--<c:set var="s" value="${requestScope.valueSearch}"/>--%>
                            <a class="page-link" href="listSession?index=${index-1}&search=${requestScope.valueSearch}&opt=${requestScope.valueSyllabusID_raw}&opt2=${requestScope.valueDowload_raw2}">Previous</a>
                        </c:if>
                    </li>
                    <li class="page-item active">
                        <a class="page-link" href="listSession?index=${index}">${index}</a>
                    </li>
                    <li class="page-item <c:if test="${index==numberPage+1}">disabled　
                        </c:if>">
                        <c:if test ="${requestScope.check != 'search'}">
                            <a class="page-link" href="listSession?index=${index+1}">Next</a>
                        </c:if>
                        <c:if test ="${requestScope.check == 'search'}">
                            <%--<c:set var="s" value="${requestScope.valueSearch}"/>--%>
                            <a class="page-link" href="listSession?index=${index+1}&search=${requestScope.valueSearch}&opt=${requestScope.valueSyllabusID_raw}&opt2=${requestScope.valueDowload_raw2}">Next</a>
                        </c:if>
                    </li>
                </ul>
            </nav>

            <jsp:include page="../navigation/footer1.jsp"/>
<!--            <script >
                function cfDelete(x) {
                    if (confirm("Are you sure to delete this record!")) {
                        window.location.href = 'deleteMaterial?id=' + x;
                    }
                }
            </script>-->
            
<script>
                                                   function confirmDelete(id) {
                                                       // Hiển thị modal
                                                       $('#confirmDeleteModal').modal('show');

                                                       // Lưu ID vào một biến ẩn
                                                       $('#confirmDeleteButton').data('id', id);
                                                   }

                                                   $('#confirmDeleteButton').click(function () {
                                                       // Lấy ID từ biến ẩn
                                                       var id = $(this).data('id');

                                                       // Chuyển hướng sang servlet để xóa bản ghi
                                                       window.location.href = 'deleteSession?id=' + id;
                                                   });
</script>


            <script src="css/Admin_dashboard.js"></script>
    </body>
</html>

<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/animation.js"></script>
<script src="assets/js/imagesloaded.js"></script>
<script src="assets/js/custom.js"></script>
<script src="assets/js/scroll_to_top.js"></script>