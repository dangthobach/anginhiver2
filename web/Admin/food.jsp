<%-- 
    Document   : food
    Created on : May 4, 2018, 2:45:30 PM
    Author     : Bach
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entities.*" %>
<%@page import="model.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Trang chủ</title>
        <!-- BOOTSTRAP STYLES-->
        <link href="${pageContext.request.contextPath}/Resource/assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- FONTAWESOME STYLES-->
        <link href="${pageContext.request.contextPath}/Resource/assets/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <!-- MORRIS CHART STYLES-->

        <!-- CUSTOM STYLES-->
        <link href="${pageContext.request.contextPath}/Resource/assets/css/custom.css" rel="stylesheet" type="text/css"/>
        <!-- GOOGLE FONTS-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <!-- TABLE STYLES-->
        <link href="${pageContext.request.contextPath}/Resource/assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="wrapper">
            <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">Binary admin</a> 
                </div>
                <div style="color: white;
                     padding: 15px 50px 5px 50px;
                     float: right;
                     font-size: 16px;">Welcome, ${sessionScope.AdminCurrent}<a href="<%=request.getContextPath() %>/Logout" class="btn btn-danger square-btn-adjust">Đăng xuất</a> </div>
            </nav>   
            <!-- /. NAV TOP  -->
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li class="text-center">
                            <img src="${pageContext.request.contextPath}/Resource/assets/img/find_user.png" alt="" class="user-image img-responsive"/>
                        </li>


                        <li>
                            <a  href="index.jsp"><i class="fa fa-dashboard fa-3x"></i> Trang chủ</a>
                        </li>
                        <li>
                            <a  href="ui.html"><i class="fa fa-user fa-3x"></i> Thông tin cá nhân</a>
                        </li>
                        <li>
                            <a  href="tab-panel.html"><i class="fas fa-sign-in-alt fa-3x"></i> Lịch sử đăng nhập</a>
                        </li>   
                        <li>
                            <a  href="tab-panel.html"><i class="fa fa-key fa-3x"></i> Đổi mật khẩu</a>
                        </li>                        
                          <li>
                            <a href="#"><i class="fa fa-sitemap fa-3x"></i> Công cụ quản lý<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="memberaccount.jsp">Quản lý thành viên</a>
                                </li>
                                <li>
                                    <a href="food.jsp">Quản lý thực phẩm</a>
                                </li>
                                <li>
                                    <a href="#">Quản lý bài đăng</a>
                                </li>
                            </ul>
                        </li>   

                         
                       
                    </ul>

                </div>

            </nav>   
            <!-- /. NAV SIDE  -->
            <div id="page-wrapper" >
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h2>Quản lý thực phẩm</h2>   

                        </div>
                    </div>
                    <!-- /. ROW  -->
                    <hr />

                    <div class="row">
                        <div class="col-md-12">
                            <!-- Advanced Tables -->
                            <div class="panel panel-default">
                                <div class="panel-heading ">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <header>Lorem ispum dia</header>
                                        </div>
                                        <div class="col-md-6" style="text-align: right">
                                            <a href="addfood.jsp"><input type="button"  name="btnThem" value="Thêm mới"/></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">

                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th width="80" scope="col"><div align="center">Hình ảnh</div></th>
                                                    <th width="110" scope="col"><div align="center">Tên thực phẩm</div></th>
                                                    <th width="80" scope="col"><div align="center">Nước</div></th>
                                                    <th width="133" scope="col"><div align="center">Năng lượng</div></th>
                                                    <th width="144" scope="col"><div align="center">Carbohydrate</div></th>
                                                    <th width="60" scope="col"><div align="center">Protein</div></th>   
                                                    <th width="60" scope="col"><div align="center">Lipid</div></th>
                                                    <th width="80" scope="col"><div align="center"></div></th>
                                                </tr>
                                            </thead>
                                            <tbody>                                                                                                                            
                                              
                                                <c:forEach var="tk" items="<%= new FoodModel().ListFood()%>">
                                                    <tr>
                                                        <td style="text-align: center"><img src="${pageContext.request.contextPath}/Resource/anginhi_anh/${tk.foodImage}" height="80px" width="80px" alt=""/></td>
                                                        <td style="text-align: center">${tk.foodVName}</td>
                                                        <td style="text-align: center">${tk.water}</td>
                                                        <td style="text-align: center">${tk.energy}</td>
                                                        <td style="text-align: center">${tk.carbohydrate}</td>
                                                        <td style="text-align: center">${tk.protein}</td>
                                                        <td style="text-align: center">${tk.lipid}</td>
                                                        <td style="width: 15%">
                                                            <div align="center">
                                                                <a href="${pageContext.request.contextPath}/FoodServlet?foodId=${tk.foodId}&action=xoa" class="btn btn-danger btn-custom" onclick="return confirm('Are you sure?')"><img src="${pageContext.request.contextPath}/Resource/images/delele_food.png" alt="" style="height: 16px"/></a>  
                                                                <a href="${pageContext.request.contextPath}/FoodDetailServlet?foodId=${tk.foodId}&action=chitiet " class="btn btn-danger btn-custom" onclick="return confirm('Are you sure?')"><img src="${pageContext.request.contextPath}/Resource/images/search.png" alt="" style="height: 16px"/></a>


                                                            </div>
                                                        </td>

                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                      
                                    </div>

                                </div>
                            </div>
                            <!--End Advanced Tables -->
                        </div>
                    </div>

                </div>
            </div>
            <!-- /. ROW  -->
        </div>

        </div>
        <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
        <!-- /. WRAPPER  -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="${pageContext.request.contextPath}/Resource/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="${pageContext.request.contextPath}/Resource/assets/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="${pageContext.request.contextPath}/Resource/assets/js/jquery.metisMenu.js" type="text/javascript"></script>
        <!-- DATA TABLE SCRIPTS -->
        <script src="${pageContext.request.contextPath}/Resource/assets/js/dataTables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/Resource/assets/js/dataTables/dataTables.bootstrap.js" type="text/javascript"></script>
        <script>
                                                     $(document).ready(function () {
                                                         $('#dataTables-example').dataTable();
                                                     });
        </script>
        <!-- CUSTOM SCRIPTS -->
        <script src="${pageContext.request.contextPath}/Resource/assets/js/custom.js" type="text/javascript"></script>


    </body>
</html>


