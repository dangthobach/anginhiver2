<%-- 
    Document   : login2
    Created on : May 11, 2018, 1:09:20 PM
    Author     : Bach
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          
             <link href="../Resource/assets/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         <div class="background-wrap">
  <div class="background"></div>
</div>

<form id="accesspanel" action="${pageContext.request.contextPath}/Login" method="post">
  <h1 id="litheader">ANGINHI</h1>
  <div class="inset">
    <p>
      <input type="text" name="username" id="email" placeholder="Tên đăng nhập">
    </p>
    <p>
      <input type="password" name="password" id="password" placeholder="Mật khẩu">
    </p>
    <div style="text-align: center;">
      <div class="checkboxouter">
        <input type="checkbox" name="rememberme" id="remember" value="Remember">
        <label class="checkbox"></label>
      </div>
      <label for="remember">Ghi nhớ mật khẩu</label>
    </div>
  </div>
  <p class="p-container">
    <input type="submit" name="Login" id="go" value="Đăng nhập">
  </p>
</form>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

   


    </body>
</html>
