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

        <%--<jsp:include page="header1.jsp"/>--%>
        <!-- SIDEBAR -->
        <%--<jsp:include page="../navigation/AdDashboard.jsp"/>--%>

        <c:if test="${sessionScope.roleName != 'staff_of_crdd' and sessionScope.roleName != 'head_of_crdd' and sessionScope.roleName != 'syllabus_designer'}">
            <jsp:include page="../navigation/header1.jsp"/>
        </c:if>



        <c:if test="${sessionScope.roleName == 'staff_of_crdd' or sessionScope.roleName == 'head_of_crdd' or sessionScope.roleName == 'syllabus_designer'}">
            <section class="ftco-section" style="padding: 1em 0">
            </c:if>
            <c:if test="${sessionScope.roleName != 'staff_of_crdd' and sessionScope.roleName != 'head_of_crdd' and sessionScope.roleName != 'syllabus_designer'}">

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
                            <h1 class="text-center mb-4" style=" font-weight: bold;">FPTU Materials List</h1>
                            <div class="table-wrap">

                                <form method="get" action="listMaterial">
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

                                                        <input  placeholder="Enter Material Description or Syllabus Code: " name="search"  type="text" id="txtKeyword" value="${requestScope.valueSearch}" class="form-control rounded mr-2" style="width:400px;font-size: inherit; margin: 0 10px;" />
                                                        <c:if test="${sessionScope.roleName == 'staff_of_crdd' or sessionScope.roleName == 'head_of_crdd' or sessionScope.roleName == 'syllabus_designer'}">

                                                            <div style="width: 50%;">
                                                                Syllabus ID:
                                                                <select class="select2" name="opt" placeholder="Nhap syllabus ID..." class="form-control" style="border-radius: 5px;width: 75%; padding: 5px">
                                                                    <option value="0">All</option>
                                                                    <c:forEach items="${requestScope.dataSubject}" var="d">
                                                                        <option value="${d.sID}">${d.sID}: ${d.sName}</option>
                                                                    </c:forEach>
                                                                </select>


                                                            </div> 
                                                        </c:if>

                                                        <span class="input-group-btn">
                                                            <input type="submit"  value="Search" id="btnSearch" class="btn btn-success" style="width:100px;" />
                                                        </span>

                                                        <c:if test="${sessionScope.roleName == 'staff_of_crdd' or sessionScope.roleName == 'head_of_crdd' or sessionScope.roleName == 'syllabus_designer'}">
                                                            <a style="margin-top: 30px; margin-left: 30px" class="btn btn-primary" href="editMaterial?id=-1">Add new</a>
                                                        </c:if>
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
                                                <th>Material Description
                                                    <a href="listMaterial?arrangeCategory=1" style="color: white"><i class="fa-solid fa-sort-up"></i></a> 
                                                    <a href="listMaterial?arrangeCategory=2" style="color: white" ><i class="fa-solid fa-sort-down"></i></a>

                                                </th>
                                                <th>Author
                                                </th>
                                                <th>Publisher

                                                </th>
                                                <th>Published Date
                                                    <a href="listMaterial?arrangeWeight=1" style="color: white"><i class="fa-solid fa-sort-up"></i></a> 
                                                    <a href="listMaterial?arrangeWeight=2" style="color: white" ><i class="fa-solid fa-sort-down"></i></a>

                                                </th>

                                                <!--<th>Syllabus ID-->

                                                <!--</th>-->

                                                <c:if test="${sessionScope.roleName == 'staff_of_crdd' or sessionScope.roleName == 'head_of_crdd' or sessionScope.roleName == 'syllabus_designer'}">

                                                    <th>Status</th>
                                                   
                                                    <th>Action</th>
                                                    </c:if>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${requestScope.data}" var="i">

                                                <tr>
                                                    <td>

                                                        <a href = "listMaterial?id=${i.id}&search=-1">   
                                                            ${i.material_description}
                                                        </a> 
                                                    </td>
                                                    <td>${i.author}</td>
                                                    <td>${i.publisher}</td>
                                                    <td>${i.published_date}</td>

                                                    <!--<td>${i.syllabus_id.sID}</td>-->
                                                    <c:if test="${sessionScope.roleName == 'staff_of_crdd' or sessionScope.roleName == 'head_of_crdd' or sessionScope.roleName == 'syllabus_designer'}">


                                                        <td>
                                                            <c:if test = "${(i.status == 1)}">
                                                                Active
                                                            </c:if>
                                                            <c:if test = "${(i.status == 0)}">
                                                                InActive
                                                            </c:if>
                                                        </td>


                                                        <td><a href="editMaterial?id=${i.id}" class="btn btn-warning"><i class="fa-sharp fa-solid fa-pen-to-square"></i></a>     
                                               
                                                            <!--<button   class="btn btn-danger">Change Status</button>-->

                                                            <button type="button" class="btn btn-danger" onclick="confirmDelete(${i.id})"><i class="fa-sharp fa-solid fa-delete-left"></i></button>

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
                                                                            <p>Are you sure you want to change the status of this material?</p>
                                                                            <form action="deleteMaterial" method="post">
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
                            <a class="page-link" href="list?index=${index-1}" >Previous</a>
                        </c:if>
                        <c:if test ="${requestScope.check == 'search'}">
                            <%--<c:set var="s" value="${requestScope.valueSearch}"/>--%>
                            <a class="page-link" href="list?index=${index-1}&search=${requestScope.valueSearch}">Previous</a>
                        </c:if>
                    </li>
                    <li class="page-item active">
                        <a class="page-link" href="list?index=${index}">${index}</a>
                    </li>
                    <li class="page-item <c:if test="${index==numberPage+1}">disabled　
                        </c:if>">
                        <c:if test ="${requestScope.check != 'search'}">
                            <a class="page-link" href="list?index=${index+1}">Next</a>
                        </c:if>
                        <c:if test ="${requestScope.check == 'search'}">
                            <%--<c:set var="s" value="${requestScope.valueSearch}"/>--%>
                            <a class="page-link" href="list?index=${index+1}&search=${requestScope.valueSearch}">Next</a>
                        </c:if>
                    </li>
                </ul>
            </nav>

            <jsp:include page="../navigation/footer1.jsp"/>
            <!--            <script >
                            function cfDelete(x,e) {
                                e.preventDefault();
            //                    console.log("giá trị id là : " +x);
                                    window.location.href = 'deleteMaterial?id=' + x;
                            }
                        </script>-->

            <script src="css/Admin_dashboard.js"></script>
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
                                                                    window.location.href = 'deleteMaterial?id=' + id;
                                                                });
            </script>

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