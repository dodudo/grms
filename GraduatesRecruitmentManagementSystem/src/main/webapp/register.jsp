<%--
  Created by IntelliJ IDEA.
  User: crumble
  Date: 2019/4/14
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String path = request.getRequestURI();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path;
%>
<base href="<%=basePath%>">
<head>
    <meta charset="UTF-8">
    <title>请注册</title>
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" />
    <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="htmleaf-demo.css">
    <script>
        var flag1 = false;
        var flag2 = true;
        function enterpriseCheckUser(){
            if ($("#register_enterprise_username").val()==""){
                $("#enterprise_span").css("color","red");
                $("#enterprise_span").css("font-size","12px");
                $("#enterprise_span").html("请输入用户名！");
                $("#enterprise_submit").attr("disabled",true);
                $("#enterprise_submit").css("background-color","gray");
                flag1 = false;
            } else{
                $.get("${pageContext.request.contextPath}/CheckEnterpriseUserNameServlet",{"name":$("#register_enterprise_username").val()},function (data) {
                    if (data.enterpriseUserExsit) {
                        $("#enterprise_span").css("color","green");
                        $("#enterprise_span").css("font-size","12px");
                        $("#enterprise_span").html(data.enterpriseMsg);
                        $("#enterprise_submit").attr("disabled",false);
                        $("#enterprise_submit").css("background-color","#46b8da");
                        flag1 = true;
                        if (!flag2){
                            $("#enterprise_submit").attr("disabled",true);
                            $("#enterprise_submit").css("background-color","gray");
                        }

                    }else {
                        $("#enterprise_span").css("color","red");
                        $("#enterprise_span").css("font-size","12px");
                        $("#enterprise_span").html(data.enterpriseMsg);
                        $("#enterprise_submit").attr("disabled",true);
                        $("#enterprise_submit").css("background-color","gray");
                        flag1 = false;
                    }
                });
            }
        }
        function checkPasswordIsEmpty(){
            if ($(".password").val()==""){
                $(".password-span").html("请输入密码！");
                $(".password-span").css("color","red");
                $(".password-span").css("font-size","12px")
                $("#enterprise_submit").attr("disabled",true);
                $("#enterprise_submit").css("background-color","gray");
                flag2 = false;
            }else {
                $(".password-span").html("");
                $(".password-span").css("font-size","12px");
                $("#enterprise_submit").attr("disabled",false);
                $("#enterprise_submit").css("background-color","#46b8da");
                flag2 = true;
                if (!flag1){
                    $("#enterprise_submit").attr("disabled",true);
                    $("#enterprise_submit").css("background-color","gray");
                }
            }
        }
        var flag3 = false;
        var flag4 = true;
        function studentCheckPhone(){
            if ($("#student_phone").val()==""){
                $("#student_phone_span").css("color","red");
                $("#student_phone_span").css("font-size","12px");
                $("#student_phone_span").html("请输入手机号！");
                $("#student_submit").attr("disabled",true);
                $("#student_submit").css("background-color","gray");
                flag3 = false;
            } else{
                $.get("${pageContext.request.contextPath}/CheckStudentPhoneServlet",{"phone":$("#student_phone").val()},function (data) {
                    if (data.enterpriseUserExsit) {
                        $("#student_phone_span").css("color","green");
                        $("#student_phone_span").css("font-size","12px");
                        $("#student_phone_span").html(data.enterpriseMsg);
                        $("#student_submit").attr("disabled",false);
                        $("#student_submit").css("background-color","#ec971f");
                        flag3 = true;
                        if (!flag4){
                            $("#student_submit").attr("disabled",true);
                            $("#student_submit").css("background-color","gray");
                        }

                    }else {
                        $("#student_phone_span").css("color","red");
                        $("#student_phone_span").css("font-size","12px");
                        $("#student_phone_span").html(data.enterpriseMsg);
                        $("#student_submit").attr("disabled",true);
                        $("#student_submit").css("background-color","gray");
                        flag1 = false;
                    }
                });
            }
        }
        function checkUserPasswordIsEmpty(){
            if ($("#student_password").val()==""){
                $("#student_pwd_span").html("请输入密码！");
                $("#student_pwd_span").css("color","red");
                $("#student_pwd_span").css("font-size","12px")
                $("#student_submit").attr("disabled",true);
                $("#student_submit").css("background-color","gray");
                flag4 = false;
            }else {
                $("#student_pwd_span").html("");
                $("student_pwd_span").css("font-size","12px");
                $("#student_submit").attr("disabled",false);
                $("#student_submit").css("background-color","#ec971f");
                flag4 = true;
                if (!flag3){
                    $("#student_submit").attr("disabled",true);
                    $("#student_submit").css("background-color","gray");
                }
            }
        }
    </script>
</head>
<body>
<div class="main-container">
    <h2>系统用户注册</h2>
    <img src="../imgs/timg.jpg">
    <div class="main-register">
        <div class="htmleaf-container">
            <div class="demo">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5" style="margin-left:-14px;height: 400px">
                            <div class="tab" role="tabpanel">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab"><i class="fa fa-home"></i><span>普通用户注册</span></a></li>
                                    <li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab"><i class="fa fa-globe"></i><span>企业用户注册</span></a></li>

                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content tabs">
                                    <div role="tabpanel" class="tab-pane fade in active" id="Section1">
                                        <img style="width: 300px;height: 60px;margin-top: -10px;margin-left: 40px;" src="../imgs/gg4.png">
                                        <form method="post" action="${pageContext.request.contextPath}/StudentRegister" >
                                            <span class="glyphicon glyphicon-earphone" aria-hidden="true"><input type="text" onblur="studentCheckPhone()" id="student_phone" name="stu_phone" placeholder="请输入您的手机号"><span id="student_phone_span"></span></span><br>
                                            <span class="glyphicon glyphicon-lock"> <input type="password" name="stu_password" onblur="checkUserPasswordIsEmpty()" id="student_password" style="margin-left: 0px;"><span id="student_pwd_span"></span></span><br>
                                            <input class="btn-warning" style="margin-left: 40px" id="student_submit" type="submit" value="立即注册">
                                        </form>
                                        <a style="color: grey;margin-left:200px;margin-top: 60px" href="./login.jsp">已有账号？立即登录</a>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="Section2">
                                        <img style="width: 300px;height: 60px;margin-top: -10px;margin-left: 40px;" src="../imgs/cen.jpg">
                                        <form method="post" action="${pageContext.request.contextPath}/EnterpriseRegister">
                                            <span class="glyphicon glyphicon-user" aria-hidden="true"><input type="text" onblur="enterpriseCheckUser()" id="register_enterprise_username" name="enterprise_username" placeholder="请输入您的用户名"><span id="enterprise_span"></span></span><br>
                                            <span class="glyphicon glyphicon-lock"> <input type="password" class="password" onblur="checkPasswordIsEmpty()" name="enterprise_password" style="margin-left: 0px;"><span class="password-span"></span></span><br>
                                            <input style="margin-left: 40px" class="btn-info" id="enterprise_submit"  type="submit" value="立即注册">
                                        </form>
                                        <a style="color: grey;margin-left:200px;margin-top: 60px" href="./login.jsp">已有账号？立即登录</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>



</div>
</div>
</div>
</div>
</div>
<div class="bottom">
    <img src="../imgs/gg3.png">
</div>
</body>
</html>
