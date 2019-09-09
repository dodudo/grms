<%--
  Created by IntelliJ IDEA.
  User: crumble
  Date: 2019/5/9
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String path = request.getRequestURI();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path;
%>
<head>
    <meta charset="UTF-8">
    <title>详情</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/detail.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="top-bar" >
    <nav class="navbar navbar-default navbar-fixed-top row" style="background-color: white">
        <div class="col-md-8"></div>
        <div class="col-md-4 col-xs-4">
            <ul class="nav nav-pills ban ul2">
                <li role="presentation" style="margin-top: 10px;">欢迎回来，<!-- 用户名 --></li>
                <li role="presentation"><a href="home.html">主页</a> </li>
                <li role="presentation"><a href="../myself/myself.jsp" target="_self">个人中心</a> </li>
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
<div class="second row">
    <div class="col-md-2">
        <a href="">首页</a>
    </div>
    <div class="col-md-2">
        <a href="">城市频道</a>
    </div>
    <div class="col-md-2">
        <a href="">校园招聘</a>
    </div>
    <div class="col-md-2">
        <a href="">高端职位</a>
    </div>
    <div class="col-md-2">
        <a href="">海外招聘</a>
    </div>
    <div class="col-md-2">
        <a href="">联系我们</a>
    </div>
</div><hr>
<div class="titt">
    <div class="col-md-6" style="margin-top: 30px">
        <div class="row time">
            <span>发布于：</span><span>时间</span>
        </div>
        <div class="row">
            <h3>岗位名称</h3>
        </div>
        <div class="row">
            <h4>工资</h4>
        </div>
        <div class="row">
            <span style="margin-left: 90px;">英语要求</span>|
            <span>地点</span>|
            <span>grade</span>|
            <span>job_PersonCount</span>|
            <span>招聘状态</span>
        </div>
    </div>
    <div class="col-md-6">
        <button class="btn btn-info local" data-toggle="modal" data-target="#send" >立即申请</button>
        <div class="modal fade" id="send" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <button class="btn btn-success" data-dismiss="modal"  style="width: 190px;height: 40px;font-size:20px;margin-left:30px;margin-bottom: 20px;">
                            简历名称
                        </button>
                        <button class="btn btn-success" data-dismiss="modal"  style="width: 190px;height: 40px;font-size:20px;margin-left:30px;margin-bottom: 20px;">
                            简历名称
                        </button>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="detail-container">
    <div class="col-md-8 rigth-container">
        <div class="ess-info">
            <span class="stitle"  style=" font-size: 20px;">职位基本信息</span><hr style="border:1px solid lightgrey;margin-left:140px;width:540px;margin-top: -15px;">
            <span>学历</span> |<span>工作时间</span> |<span>salary</span> |<span>招聘人数</span>
        </div>
        <div class="job-desc">
            <span class="stitle"  style=" font-size: 20px;">职位描述</span><hr style="border:1px solid lightgrey;margin-left:100px;width:583px;margin-top: -15px;">
            <p>职位要求</p>
            <pre>
           	    	这里是。。。
           	    </pre>
            <p>岗位职责</p>
            <pre>
                  这里是。。。
                </pre>
            <p>经验要求</p>
            <pre >
                  这里是。。。
                </pre>
        </div>
        <div class="job-local">
            <span class="stitle" style=" font-size: 20px;">工作地点</span><hr style="border:1px solid lightgrey;margin-left:100px;width:583px;margin-top: -15px;">
            <span style="margin-left: 20px;font-size:15px">工作地点</span>
        </div>
    </div>
    <div class="col-md-4 left-container">
        <img src="../imgs/ll.jpg">
        <h3>fullname</h3>
        <img src="../imgs/l1.png"><p class="relocal">行业</p>
        <img src="../imgs/l2.png"><p class="relocal">性质</p>
        <img src="../imgs/l3.png"><p class="relocal">规模</p>
        <img src="../imgs/l4.png"><p class="relocal">网址</p>
        <pre>description</pre>
    </div>
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
                <img src="../imgs/ff.jpg"></div>
            <div class="col-md-4"><img src="../imgs/ff.jpg"></div>
            <div class="col-md-4"><img src="../imgs/ff.jpg"></div>
            <span>未经开发人员同意，不得转载本网站之所有招聘信息及作品开发者权所有</span>
        </div><hr>
    </div>
</div>



</body>
</html>
