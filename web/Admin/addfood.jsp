<%-- 
    Document   : addfood
    Created on : May 9, 2018, 6:03:59 PM
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
        <title>Free Bootstrap Admin Template : Binary Admin</title>
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
                            <h2>Table Examples</h2>   
                            <h5>Welcome Jhon Deo , Love to see you back. </h5>

                        </div>
                    </div>
                    <!-- /. ROW  -->
                    <hr />

                    <div class="row">
                        <div class="col-md-12">
                            <!-- Advanced Tables -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <header>Quản lý thành viên</header>
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <form action="${pageContext.request.contextPath}/FoodServlet?action=them" method="post">
                                            <div  style="float: left; width: 100%; margin-top:100px; padding: 5px 0">
                                                <div style="width: 100%;padding: 5px 0">
                                                    <div class="col-lg-4"><label for="select" style="float:right;">Nhóm thực phẩm:</label></div>
                                                    <div class="col-lg-4">
                                                        <select id="category" name="category" style="width: 100%">
                                                            <option selected>--Chọn một nhóm thực phẩm--</option>
                                                            <c:forEach var="tk" items="<%= new FoodCategoryModel().CategoryList()%>">                               
                                                                <option value="${tk.foodCategoryId}">${tk.foodCategoryName}</option>

                                                            </c:forEach>
                                                        </select>
                                                        </select>
                                                    </div>
                                                    <div class="col-lg-4">&nbsp;</div>
                                                </div>
                                                <!--             <div  style="width: 100%; float:left;padding: 5px 0">
                                                                 <div class="col-lg-4" ><label style="float:right;">Mã thực phẩm:</label>
                                                                 </div>
                                                                 <div class="col-lg-4">20001 </div>
                                                                 <div class="col-lg-4">&nbsp;</div>
                                                             </div>   -->
                                                <div style="width: 100%; float:left;padding: 5px 0">
                                                    <div class="col-lg-4">
                                                        <label for="textfield2" style="float:right;">Tên thực phẩm (tiếng Việt):</label>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <input type="text" name="foodVName" id="textfield2" style="width: 100%"/>
                                                    </div>				
                                                    <div class="col-lg-4">&nbsp;</div>
                                                </div>
                                                <div  style="width: 100%; float:left;padding: 5px 0">
                                                    <div class="col-lg-4" ><label for="textfield3" style="float:right;">Tên thực phẩm (tiếng Anh):</label>
                                                    </div>
                                                    <div class="col-lg-4"><input type="text" name="foodEName" id="textfield3"  style="width: 100%"/> </div>
                                                    <div class="col-lg-4">&nbsp;</div>
                                                </div>
                                                <div style="width: 100%; height:100px; float:left; padding: 5px 0 ">
                                                    <div class="col-lg-4"><label for="textarea" style="float:right;">Công dụng:</label></div>
                                                    <div class="col-lg-4" style="height: 100%"><textarea name="foodUses" id="textarea" style="width:100%; height:100%"></textarea>
                                                    </div>
                                                    <div class="col-lg-4">&nbsp;</div>					
                                                </div>	
                                                <div  style="width: 100%; float:left;padding: 5px 0">
                                                    <div class="col-lg-4" ><label for="imageUpload" style="float:right;">Ảnh: </label>
                                                    </div>
                                                    <div class="col-lg-4"><input type="file" name="foodImage"/></div>
                                                    <div class="col-lg-4">&nbsp;</div>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-lg-offset-1" ><table width="100%" border="5">
                                                    <tbody>
                                                        <tr>
                                                            <th width="54%" scope="col" class="vHeading text-center">Thành phần dinh dưỡng</th>
                                                            <th width="12%" scope="col" class="vHeading text-center">Đơn vị</th>
                                                            <th width="34%" scope="col" class="vHeading text-center">Hàm lượng</th>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Nước</th>
                                                            <td class="text-center">g</td>
                                                            <td>
                                                                <input type="text" name="water" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Năng lượng(Energy)</th>
                                                            <td class="text-center">KCal</td>
                                                            <td><input type="text" name="energy" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Protein</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="protein" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Lipid(Fat)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="lipid" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Glucid(Carbohydrate)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="carbohydrate" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Celluloza(Fiber)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="celluloza" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Tro(Ash)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="tro" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Đường tổng số</th>
                                                            <td class="text-center">g</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft">Galactoza(Galactose)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft">Maltoza(Maltose)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft">Lactoza(Lactose)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft">Fructoza(Fructose)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft">Glucoza(Glucose)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft">Sacaroza(Sucrose)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Calci(Calcium)</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="calcium" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Iron</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="iron" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Magiê(Magnesium)</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="magnesium" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Mangan(Manganese)</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="manganese" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Phospho(Phosphorous)</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="phosphorous" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Kali(Potassium)</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="potassium" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Natri(Sodium)</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="sodium" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Kẽm(Zinc)</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="zinc" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Đồng(Copper)</th>
                                                            <td class="text-center">µg</td>
                                                            <td><input type="text" name="copper" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Selen(Selenium)</th>
                                                            <td class="text-center">µg</td>
                                                            <td><input type="text" name="selenium" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Vitamin C(Ascorbic acid)</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="vitaminC" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Vitamin B1(Thiamine)</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="vitaminB1" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Vitamin B2(Riboflavin)</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="vitaminB2" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Vitamin PP(Niacin)</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="vitaminPp" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Vitamin B5(Pantothenic acid)</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="vitaminB5" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Vitamin B6(Pyridoxine)</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="vitaminB6" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Folat(Folate)</th>
                                                            <td class="text-center">µg</td>
                                                            <td><input type="text" name="folat" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Vitamin B9(Folic acid)</th>
                                                            <td class="text-center">µg</td>
                                                            <td><input type="text" name="vitaminB9" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Vitamin H(Biotin)</th>
                                                            <td class="text-center">µg</td>
                                                            <td><input type="text" name="vitaminH" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Vitamin B12(Cyanocobalamine)</th>
                                                            <td class="text-center">µg</td>
                                                            <td><input type="text" name="vitaminB12" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Vitamin A(Retinol)</th>
                                                            <td class="text-center">µg</td>
                                                            <td><input type="text" name="vitaminA" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Vitamin D(Calciferol)</th>
                                                            <td class="text-center">µg</td>
                                                            <td><input type="text" name="vitaminD" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Vitamin E(Alpha-tocopherol)</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="vitaminE" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Vitamin K(Phylloquinone)</th>
                                                            <td class="text-center">µg</td>
                                                            <td><input type="text" name="vitaminK" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Beta-caroten</th>
                                                            <td class="text-center">µg</td>
                                                            <td><input type="text" name="betaCaroten" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Alpha-caroten</th>
                                                            <td class="text-center">µg</td>
                                                            <td><input type="text" name="alphaCaroten" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Beta-cryptoxanthin</th>
                                                            <td class="text-center">µg</td>
                                                            <td><input type="text" name="betaCryptoxanthin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Lycopen</th>
                                                            <td class="text-center">µg</td>
                                                            <td><input type="text" name="lycopen" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Lutein+Zeaxanthin</th>
                                                            <td class="text-center">µg</td>
                                                            <td><input type="text" name="lutein" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Purin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="purin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="col-lg-5"  >
                                                <table width="100%" border="5">
                                                    <tbody>
                                                        <tr>
                                                            <th width="54%" scope="col" class="vHeading text-center">Thành phần dinh dưỡng</th>
                                                            <th width="12%" scope="col" class="vHeading text-center">Đơn vị</th>
                                                            <th width="34%" scope="col" class="vHeading text-center">Hàm lượng</th>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Tổng số isoflavon(Total isoflavone)</th>
                                                            <td class="text-center">mg</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft">Daidzein</th>
                                                            <td class="text-center"> mg</td>
                                                            <td><input type="text" name="daidzein" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft">Genistein</th>
                                                            <td class="text-center"> mg</td>
                                                            <td><input type="text" name="genistein" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft">Glycetin</th>
                                                            <td class="text-center"> mg</td>
                                                            <td><input type="text" name="glycetin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Tổng số acid béo no</th>
                                                            <td class="text-center">g</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft">Palmitic(C16:9)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="palmitic" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft"> Marganic(C17:0)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="marganic" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft">Stearic(C18:0)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="stearic" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft"> Arachidic (C20:0)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="arachidic" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft"> Behenic(22:0)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="behenic" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft"> Lignoceric(C24:0)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="lignoceric" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Tổng số acid béo không no 1 nối đôi</th>
                                                            <td class="text-center">g</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft"> Myristoleic(C14:1)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="myristoleic" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft"> Palmitoleic(C16:1)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="palmitoleic" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft"> Oleic(C18:1)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="oleic" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Tổng số acid béo không no nhiều nối đôi</th>
                                                            <td class="text-center">g</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft"> Linoleic(C18:2 n6)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft"> Linolenic(C18:2 n3)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft"> Arachidonic(C20:4)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft"> Eicosapentaenoic(C20:5 n3)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row" class="paddingLeft"> Docosahenxaenoic(C22:6 n3)</th>
                                                            <td class="text-center">g</td>
                                                            <td><input type="text" name="textfield" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Tổng số acid bén trans</th>
                                                            <td class="text-center">g</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Cholesterol</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="cholesterol" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Phylosterol</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="phylosterol" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Lysin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="lysin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Methionin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="methionin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Tryptophan</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="tryptophan" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Phenylalanin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="phenylalanin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Threonin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="threonin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Valin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="valin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Leucin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="leucin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Isoleucin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="isoleucin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Arginin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="arginin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Histidin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="histidin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Cystin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="cystin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Tyrosin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="tyrosin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Alanin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="alanin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Acid aspartic</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="acidAspartic" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Acid glutamic</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="acidGlutamic" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Glycin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="glycin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Prolin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="prolin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"> Serin</th>
                                                            <td class="text-center">mg</td>
                                                            <td><input type="text" name="serin" id="textfield" class="inputField"></td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row"></th>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                    </tbody>
                                                </table></div>

                                            <input type="submit" value="Lưu" name="btnLuu" align="middle"/>

                                        </form>


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


