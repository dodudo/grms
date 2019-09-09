<%--
  Created by IntelliJ IDEA.
  User: crumble
  Date: 2019/4/14
  Time: 11:05
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
    <title>搜索结果</title>
    <link rel="stylesheet" type="text/css" href="css/result.css">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="top-bar" >
    <nav class="navbar navbar-default navbar-fixed-top row" style="background-color: white">
        <div class="col-md-8"></div>
        <div class="col-md-4 col-xs-4">
            <ul class="nav nav-pills ban ul2">
                <li role="presentation" style="margin-top: 10px;">欢迎回来，<!-- 用户名 --></li>
                <li role="presentation"><a href="./home.jsp">主页</a> </li>
                <li role="presentation"><a href="./myself.jsp" target="_self">个人中心</a> </li>
                <li role="presentation"><a href="">帮助</a> </li>
                <li role="presentation"><a href="">联系我们</a> </li>
            </ul>
        </div>
        <div class="search">
            <form method="get" action="">
                <input type="text" name="find" placeholder="请输入您所寻找的职位">
                <input style="width: 80px;background-color: #1787FB;color: white" type="submit" name="search" value="查找">
            </form>
        </div>
    </nav>
</div>
<div class="totalcontanier">
    <div class="tap">
        <div class="tt">
            搜索结果
        </div>
    </div>
    <div class="rr">
        <!-- 单条搜索结果显示 -->
        <div class="single-result ">
            <div class="row"></div>
            <div class="row">
                <div class="col-md-4 dd">
                    <p>职位名称</p>
                </div>
                <div class="col-md-8">
                    <p>公司名称</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <span style="color:red;font-size:20px;font-weight: bold; margin-left: 50px;">工资</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span>地点</span>|
                    <span>学历要求</span>|
                    <span>招聘状态</span>
                </div>
                <div class="col-md-4">
                    <span style="margin-left: 60px">comtype</span>|
                    <span>empcount</span>
                </div>
            </div>
            <div class="row">
                <button class="btn btn-info local"><a href="./detail.jsp"> 查看详情</a></button>
            </div>
        </div>
    </div>
</div>

<div class="gap">

</div>
<!-- 尾部 -->
<div class="my-footer">
    <div class="col-md-2 ss">
        <ul>关于
            <li>系统招聘</li>
            <li>人才招聘</li>
            <li>联系方式</li>
            <li>网站地图</li>
        </ul>
    </div>
    <div class="col-md-2 ss">
        <ul>帮助
            <li>加入系统</li>
            <li>客户服务</li>
            <li>法律声明</li>
            <li>隐私政策</li>
            <li>发票制度</li>
            <li>用户协议</li>
        </ul>
    </div>
    <div class="col-md-2">
    </div>
    <div class="col-md-5">
        <h4>更懂你的价值</h4>
        <div class="row">
            <div class="col-md-4">
                <img src="./imgs/ff.jpg">
            </div>
            <div class="col-md-4"><img src="./imgs/ff.jpg"></div>
            <div class="col-md-4"><img src="./imgs/ff.jpg"></div>
            <span>未经开发人员同意，不得转载本网站之所有招聘信息及作品开发者权所有</span>
        </div><hr>
    </div>
</div>
</body>
</html>
