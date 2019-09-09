<%@ page import="javax.print.DocFlavor" %><%--
  Created by IntelliJ IDEA.
  User: crumble
  Date: 2019/4/12
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>
<html>

<%
  String path = request.getRequestURI();
  String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path;
  %>
<base href="<%=basePath%>">
  <head>
    <meta charset="UTF-8">
    <title>欢迎登陆</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" />
    <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>
  </head>
  <body>
  <div class="top row">
    <div class="col-md-4">
      <h2>毕业生就业信息管理系统</h2>
    </div>
    <div class="col-md-6">
    </div>
    <div class="col-md-2">
    </div>
  </div>
  <!-- 登录界面 -->
  <img src="../imgs/login-bg.jpg">
  <div class="main-login">
    <img src="../imgs/gg2.png">
    <form method="post" action="${pageContext.request.contextPath}/UserLogin">
      <input type="text" name="username" placeholder="用户名">
      <input style="margin-top:-10px;margin-bottom: 20px" type="text" name="password" placeholder="密码">
      <p style="color: red; font-size: 12px;margin-left: 35px;margin-bottom: -5px;">${err}</p>
      <input type="radio" name="role" value="1" checked style="width: 15px;margin-bottom: 25px;margin-left: 40px"><label class="ll" >普通用户</label>
      <input type="radio" name="role" value="2" style="width: 15px;margin-left: 70px"><label class="ll">企业</label>
      <input type="radio" name="role" value="3" style="width: 15px;margin-left: 50px"><label class="ll">教师</label>
      <input  style="background-color:#FF9900;color: white;margin-top: -5px; " type="submit" name="llogin" value="立即登录">
    </form>
  </div>
  <!-- 注册 -->
  <div class="register">
    <a href="./register.jsp" target="_self">还没账号？点我注册</a>
  </div>
  <!-- 尾部 -->
  <div class="bottom">
    <img src="./imgs/gg3.png">
  </div>
  </body>
</html>
