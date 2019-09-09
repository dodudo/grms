<%--
  Created by IntelliJ IDEA.
  User: crumble
  Date: 2019/5/9
  Time: 18:27
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
    <title>招聘首页</title>
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <link rel="stylesheet" type="text/css" href="css/home1.css">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script type="text/javascript">
        $(function(){
            $('.aui-content-main .aui-content-menu').hover(function(){

                $(this).addClass('active').find('s').hide();

                $(this).find('.aui-content-menu-dow').show();

            },function(){

                $(this).removeClass('active').find('s').show();

                $(this).find('.aui-content-menu-dow').hide();

            });

        });
        $(function(){
            $('#myCarousel').carousel({interval:1000});
        })

    </script>
</head>
<body>
<div class="top-bar" >
    <nav class="navbar navbar-default navbar-fixed-top row" style="background-color: white">
        <div class="col-md-8"></div>
        <div class="col-md-4 col-xs-4">
            <ul class="nav nav-pills ban ul2">
                <li role="presentation" style="margin-top: 10px;">欢迎回来，<!-- 用户名 --></li>
                <li role="presentation"><a href="http://127.0.0.1:8080/index/home">主页</a> </li>
                <li role="presentation"><a href="myself.jsp" target="_self">个人中心</a> </li>
                <%--<li role="presentation"><a href="login.jsp">登录</a> </li>--%>
                <li role="presentation"><a href="">帮助</a> </li>
                <li role="presentation"><a href="">联系我们</a> </li>
            </ul>
        </div>
        <div class="search">
            <form method="get" action="http://127.0.0.1:8080/index/search">
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
<div class="container-main">
    <div class="row">
        <div class="col-md-4">
            <div class="aui-container-bxo clearfix" style="position: relative;margin-left: 60px;">
                <div class="aui-content-sidebar clearfix" id="nav" style="margin-top: 10px;">
                    <div class="aui-content-main">
                        <div class="aui-content-menu">
                            <div class="aui-content-menu-head">
                                <div class="aui-content-menu-head-list">
                                    <h2>产品</h2>
                                    <a href="#">产品总监</a>
                                    <a href="#">产品经理</a>
                                    <a href="#">数据产品</a>
                                    <i class="aui-content-menu-head-list-arrow"></i>
                                </div>
                            </div>
                            <div class="aui-content-menu-dow aui-ds">
                                <dl>
                                    <dt>
                                        <span>后端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">Java</a>
                                        <a href="#" class="aui-a-curr">C++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">数据挖掘</a>
                                        <a href="#">搜索算法</a>
                                        <a href="#" class="aui-a-curr">精准推荐</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">全栈工程师</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">Hadoop</a>
                                        <a href="#">Python</a>
                                        <a href="#" class="aui-a-curr">Delphi</a>
                                        <a href="#">Perl</a>
                                        <a href="#">Ruby</a>
                                        <a href="#">Node.js</a>
                                        <a href="#">Go</a>
                                        <a href="#">ASP</a>
                                        <a href="#">Shell</a>
                                        <a href="#">区块</a>
                                        <a href="#">后端开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>移动开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">HTML5</a>
                                        <a href="#" class="aui-a-curr">Android </a>
                                        <a href="#" class="aui-a-curr">iOS</a>
                                        <a href="#">移动</a>
                                        <a href="#">WP</a>
                                        <a href="#" class="aui-a-curr">css3</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">jquery</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">其它</a>
                                        <a href="#">移动开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>前端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">web前端</a>
                                        <a href="#" class="aui-a-curr">Flash++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">html5</a>
                                        <a href="#">JavaScript</a>
                                        <a href="#" class="aui-a-curr">COCOS2D</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">U3D-X </a>
                                        <a href="#">css</a>
                                        <a href="#" class="aui-a-curr">js</a>
                                        <a href="#">jq</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>高端职位</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">技术经理 </a>
                                        <a href="#" class="aui-a-curr">技术总监++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#"> 架构师 </a>
                                        <a href="#">CTO</a>
                                        <a href="#" class="aui-a-curr"> 运维总监</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr"> 技术合伙人-X </a>
                                        <a href="#"> 项目总监 </a>
                                        <a href="#" class="aui-a-curr">测试总监</a>
                                        <a href="#"> 安全专家</a>
                                        <a href="#">  高端技术职位</a>
                                        <a href="#"> 其它</a>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="aui-content-menu">
                            <div class="aui-content-menu-head">
                                <div class="aui-content-menu-head-list">
                                    <h2>职能</h2>
                                    <a href="#">行政</a>
                                    <a href="#">财务</a>
                                    <a href="#">人事</a>
                                    <a href="#">HR</a>
                                    <a href="#">审计</a>
                                    <i class="aui-content-menu-head-list-arrow"></i>
                                </div>
                            </div>
                            <div class="aui-content-menu-dow aui-ds">
                                <dl>
                                    <dt>
                                        <span>后端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">Java</a>
                                        <a href="#" class="aui-a-curr">C++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">数据挖掘</a>
                                        <a href="#">搜索算法</a>
                                        <a href="#" class="aui-a-curr">精准推荐</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">全栈工程师</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">Hadoop</a>
                                        <a href="#">Python</a>
                                        <a href="#" class="aui-a-curr">Delphi</a>
                                        <a href="#">Perl</a>
                                        <a href="#">Ruby</a>
                                        <a href="#">Node.js</a>
                                        <a href="#">Go</a>
                                        <a href="#">ASP</a>
                                        <a href="#">Shell</a>
                                        <a href="#">区块</a>
                                        <a href="#">后端开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>移动开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">HTML5</a>
                                        <a href="#" class="aui-a-curr">Android </a>
                                        <a href="#" class="aui-a-curr">iOS</a>
                                        <a href="#">移动</a>
                                        <a href="#">WP</a>
                                        <a href="#" class="aui-a-curr">css3</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">jquery</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">其它</a>
                                        <a href="#">移动开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>前端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">web前端</a>
                                        <a href="#" class="aui-a-curr">Flash++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">html5</a>
                                        <a href="#">JavaScript</a>
                                        <a href="#" class="aui-a-curr">COCOS2D</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">U3D-X </a>
                                        <a href="#">css</a>
                                        <a href="#" class="aui-a-curr">js</a>
                                        <a href="#">jq</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>高端职位</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">技术经理 </a>
                                        <a href="#" class="aui-a-curr">技术总监++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#"> 架构师 </a>
                                        <a href="#">CTO</a>
                                        <a href="#" class="aui-a-curr"> 运维总监</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr"> 技术合伙人-X </a>
                                        <a href="#"> 项目总监 </a>
                                        <a href="#" class="aui-a-curr">测试总监</a>
                                        <a href="#"> 安全专家</a>
                                        <a href="#">  高端技术职位</a>
                                        <a href="#"> 其它</a>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="aui-content-menu ">
                            <div class="aui-content-menu-head">
                                <div class="aui-content-menu-head-list">
                                    <h2>用户研究</h2>
                                    <a href="#">大数据</a>
                                    <a href="#">分析师</a>
                                    <a href="#">数据产品</a>
                                    <i class="aui-content-menu-head-list-arrow"></i>
                                </div>
                            </div>
                            <div class="aui-content-menu-dow aui-ds">
                                <dl>
                                    <dt>
                                        <span>后端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">Java</a>
                                        <a href="#" class="aui-a-curr">C++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">数据挖掘</a>
                                        <a href="#">搜索算法</a>
                                        <a href="#" class="aui-a-curr">精准推荐</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">全栈工程师</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">Hadoop</a>
                                        <a href="#">Python</a>
                                        <a href="#" class="aui-a-curr">Delphi</a>
                                        <a href="#">Perl</a>
                                        <a href="#">Ruby</a>
                                        <a href="#">Node.js</a>
                                        <a href="#">Go</a>
                                        <a href="#">ASP</a>
                                        <a href="#">Shell</a>
                                        <a href="#">区块</a>
                                        <a href="#">后端开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>移动开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">HTML5</a>
                                        <a href="#" class="aui-a-curr">Android </a>
                                        <a href="#" class="aui-a-curr">iOS</a>
                                        <a href="#">移动</a>
                                        <a href="#">WP</a>
                                        <a href="#" class="aui-a-curr">css3</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">jquery</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">其它</a>
                                        <a href="#">移动开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>前端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">web前端</a>
                                        <a href="#" class="aui-a-curr">Flash++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">html5</a>
                                        <a href="#">JavaScript</a>
                                        <a href="#" class="aui-a-curr">COCOS2D</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">U3D-X </a>
                                        <a href="#">css</a>
                                        <a href="#" class="aui-a-curr">js</a>
                                        <a href="#">jq</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>高端职位</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">技术经理 </a>
                                        <a href="#" class="aui-a-curr">技术总监++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#"> 架构师 </a>
                                        <a href="#">CTO</a>
                                        <a href="#" class="aui-a-curr"> 运维总监</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr"> 技术合伙人-X </a>
                                        <a href="#"> 项目总监 </a>
                                        <a href="#" class="aui-a-curr">测试总监</a>
                                        <a href="#"> 安全专家</a>
                                        <a href="#">  高端技术职位</a>
                                        <a href="#"> 其它</a>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="aui-content-menu ">
                            <div class="aui-content-menu-head">
                                <div class="aui-content-menu-head-list">
                                    <h2>人工智能</h2>
                                    <a href="#">人机学习</a>
                                    <a href="#">自动化</a>
                                    <a href="#">互联网</a>
                                    <i class="aui-content-menu-head-list-arrow"></i>
                                </div>
                            </div>
                            <div class="aui-content-menu-dow aui-ds">
                                <dl>
                                    <dt>
                                        <span>后端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">Java</a>
                                        <a href="#" class="aui-a-curr">C++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">数据挖掘</a>
                                        <a href="#">搜索算法</a>
                                        <a href="#" class="aui-a-curr">精准推荐</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">全栈工程师</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">Hadoop</a>
                                        <a href="#">Python</a>
                                        <a href="#" class="aui-a-curr">Delphi</a>
                                        <a href="#">Perl</a>
                                        <a href="#">Ruby</a>
                                        <a href="#">Node.js</a>
                                        <a href="#">Go</a>
                                        <a href="#">ASP</a>
                                        <a href="#">Shell</a>
                                        <a href="#">区块</a>
                                        <a href="#">后端开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>移动开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">HTML5</a>
                                        <a href="#" class="aui-a-curr">Android </a>
                                        <a href="#" class="aui-a-curr">iOS</a>
                                        <a href="#">移动</a>
                                        <a href="#">WP</a>
                                        <a href="#" class="aui-a-curr">css3</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">jquery</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">其它</a>
                                        <a href="#">移动开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>前端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">web前端</a>
                                        <a href="#" class="aui-a-curr">Flash++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">html5</a>
                                        <a href="#">JavaScript</a>
                                        <a href="#" class="aui-a-curr">COCOS2D</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">U3D-X </a>
                                        <a href="#">css</a>
                                        <a href="#" class="aui-a-curr">js</a>
                                        <a href="#">jq</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>高端职位</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">技术经理 </a>
                                        <a href="#" class="aui-a-curr">技术总监++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#"> 架构师 </a>
                                        <a href="#">CTO</a>
                                        <a href="#" class="aui-a-curr"> 运维总监</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr"> 技术合伙人-X </a>
                                        <a href="#"> 项目总监 </a>
                                        <a href="#" class="aui-a-curr">测试总监</a>
                                        <a href="#"> 安全专家</a>
                                        <a href="#">  高端技术职位</a>
                                        <a href="#"> 其它</a>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="aui-content-menu ">
                            <div class="aui-content-menu-head">
                                <div class="aui-content-menu-head-list">
                                    <h2>运维</h2>
                                    <a href="#">数据</a>
                                    <a href="#">网络工程师</a>
                                    <a href="#">运维</a>
                                    <i class="aui-content-menu-head-list-arrow"></i>
                                </div>
                            </div>
                            <div class="aui-content-menu-dow aui-ds">
                                <dl>
                                    <dt>
                                        <span>后端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">Java</a>
                                        <a href="#" class="aui-a-curr">C++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">数据挖掘</a>
                                        <a href="#">搜索算法</a>
                                        <a href="#" class="aui-a-curr">精准推荐</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">全栈工程师</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">Hadoop</a>
                                        <a href="#">Python</a>
                                        <a href="#" class="aui-a-curr">Delphi</a>
                                        <a href="#">Perl</a>
                                        <a href="#">Ruby</a>
                                        <a href="#">Node.js</a>
                                        <a href="#">Go</a>
                                        <a href="#">ASP</a>
                                        <a href="#">Shell</a>
                                        <a href="#">区块</a>
                                        <a href="#">后端开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>移动开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">HTML5</a>
                                        <a href="#" class="aui-a-curr">Android </a>
                                        <a href="#" class="aui-a-curr">iOS</a>
                                        <a href="#">移动</a>
                                        <a href="#">WP</a>
                                        <a href="#" class="aui-a-curr">css3</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">jquery</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">其它</a>
                                        <a href="#">移动开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>前端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">web前端</a>
                                        <a href="#" class="aui-a-curr">Flash++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">html5</a>
                                        <a href="#">JavaScript</a>
                                        <a href="#" class="aui-a-curr">COCOS2D</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">U3D-X </a>
                                        <a href="#">css</a>
                                        <a href="#" class="aui-a-curr">js</a>
                                        <a href="#">jq</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>高端职位</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">技术经理 </a>
                                        <a href="#" class="aui-a-curr">技术总监++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#"> 架构师 </a>
                                        <a href="#">CTO</a>
                                        <a href="#" class="aui-a-curr"> 运维总监</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr"> 技术合伙人-X </a>
                                        <a href="#"> 项目总监 </a>
                                        <a href="#" class="aui-a-curr">测试总监</a>
                                        <a href="#"> 安全专家</a>
                                        <a href="#">  高端技术职位</a>
                                        <a href="#"> 其它</a>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="aui-content-menu ">
                            <div class="aui-content-menu-head">
                                <div class="aui-content-menu-head-list">
                                    <h2>交互设计</h2>
                                    <a href="#">设计</a>
                                    <a href="#">BD</a>
                                    <a href="#">前端开发</a>
                                    <i class="aui-content-menu-head-list-arrow"></i>
                                </div>
                            </div>
                            <div class="aui-content-menu-dow aui-ds">
                                <dl>
                                    <dt>
                                        <span>后端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">Java</a>
                                        <a href="#" class="aui-a-curr">C++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">数据挖掘</a>
                                        <a href="#">搜索算法</a>
                                        <a href="#" class="aui-a-curr">精准推荐</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">全栈工程师</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">Hadoop</a>
                                        <a href="#">Python</a>
                                        <a href="#" class="aui-a-curr">Delphi</a>
                                        <a href="#">Perl</a>
                                        <a href="#">Ruby</a>
                                        <a href="#">Node.js</a>
                                        <a href="#">Go</a>
                                        <a href="#">ASP</a>
                                        <a href="#">Shell</a>
                                        <a href="#">区块</a>
                                        <a href="#">后端开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>移动开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">HTML5</a>
                                        <a href="#" class="aui-a-curr">Android </a>
                                        <a href="#" class="aui-a-curr">iOS</a>
                                        <a href="#">移动</a>
                                        <a href="#">WP</a>
                                        <a href="#" class="aui-a-curr">css3</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">jquery</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">其它</a>
                                        <a href="#">移动开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>前端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">web前端</a>
                                        <a href="#" class="aui-a-curr">Flash++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">html5</a>
                                        <a href="#">JavaScript</a>
                                        <a href="#" class="aui-a-curr">COCOS2D</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">U3D-X </a>
                                        <a href="#">css</a>
                                        <a href="#" class="aui-a-curr">js</a>
                                        <a href="#">jq</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>高端职位</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">技术经理 </a>
                                        <a href="#" class="aui-a-curr">技术总监++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#"> 架构师 </a>
                                        <a href="#">CTO</a>
                                        <a href="#" class="aui-a-curr"> 运维总监</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr"> 技术合伙人-X </a>
                                        <a href="#"> 项目总监 </a>
                                        <a href="#" class="aui-a-curr">测试总监</a>
                                        <a href="#"> 安全专家</a>
                                        <a href="#">  高端技术职位</a>
                                        <a href="#"> 其它</a>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="aui-content-menu ">
                            <div class="aui-content-menu-head">
                                <div class="aui-content-menu-head-list">
                                    <h2>运营</h2>
                                    <a href="#">新媒体运营</a>
                                    <a href="#">产品编辑</a>
                                    <a href="#">运营总监</a>
                                    <i class="aui-content-menu-head-list-arrow"></i>
                                </div>
                            </div>
                            <div class="aui-content-menu-dow aui-ds">
                                <dl>
                                    <dt>
                                        <span>后端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">Java</a>
                                        <a href="#" class="aui-a-curr">C++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">数据挖掘</a>
                                        <a href="#">搜索算法</a>
                                        <a href="#" class="aui-a-curr">精准推荐</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">全栈工程师</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">Hadoop</a>
                                        <a href="#">Python</a>
                                        <a href="#" class="aui-a-curr">Delphi</a>
                                        <a href="#">Perl</a>
                                        <a href="#">Ruby</a>
                                        <a href="#">Node.js</a>
                                        <a href="#">Go</a>
                                        <a href="#">ASP</a>
                                        <a href="#">Shell</a>
                                        <a href="#">区块</a>
                                        <a href="#">后端开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>移动开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">HTML5</a>
                                        <a href="#" class="aui-a-curr">Android </a>
                                        <a href="#" class="aui-a-curr">iOS</a>
                                        <a href="#">移动</a>
                                        <a href="#">WP</a>
                                        <a href="#" class="aui-a-curr">css3</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">jquery</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">其它</a>
                                        <a href="#">移动开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>前端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">web前端</a>
                                        <a href="#" class="aui-a-curr">Flash++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">html5</a>
                                        <a href="#">JavaScript</a>
                                        <a href="#" class="aui-a-curr">COCOS2D</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">U3D-X </a>
                                        <a href="#">css</a>
                                        <a href="#" class="aui-a-curr">js</a>
                                        <a href="#">jq</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>高端职位</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">技术经理 </a>
                                        <a href="#" class="aui-a-curr">技术总监++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#"> 架构师 </a>
                                        <a href="#">CTO</a>
                                        <a href="#" class="aui-a-curr"> 运维总监</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr"> 技术合伙人-X </a>
                                        <a href="#"> 项目总监 </a>
                                        <a href="#" class="aui-a-curr">测试总监</a>
                                        <a href="#"> 安全专家</a>
                                        <a href="#">  高端技术职位</a>
                                        <a href="#"> 其它</a>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="aui-content-menu ">
                            <div class="aui-content-menu-head">
                                <div class="aui-content-menu-head-list">
                                    <h2>金融</h2>
                                    <a href="#">并购</a>
                                    <a href="#">投资</a>
                                    <a href="#">风控</a>
                                    <a href="#">财经</a>
                                    <a href="#">融资</a>
                                    <i class="aui-content-menu-head-list-arrow"></i>
                                </div>
                            </div>
                            <div class="aui-content-menu-dow aui-ds">
                                <dl>
                                    <dt>
                                        <span>后端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">Java</a>
                                        <a href="#" class="aui-a-curr">C++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">数据挖掘</a>
                                        <a href="#">搜索算法</a>
                                        <a href="#" class="aui-a-curr">精准推荐</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">全栈工程师</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">Hadoop</a>
                                        <a href="#">Python</a>
                                        <a href="#" class="aui-a-curr">Delphi</a>
                                        <a href="#">Perl</a>
                                        <a href="#">Ruby</a>
                                        <a href="#">Node.js</a>
                                        <a href="#">Go</a>
                                        <a href="#">ASP</a>
                                        <a href="#">Shell</a>
                                        <a href="#">区块</a>
                                        <a href="#">后端开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>移动开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">HTML5</a>
                                        <a href="#" class="aui-a-curr">Android </a>
                                        <a href="#" class="aui-a-curr">iOS</a>
                                        <a href="#">移动</a>
                                        <a href="#">WP</a>
                                        <a href="#" class="aui-a-curr">css3</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">jquery</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">其它</a>
                                        <a href="#">移动开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>前端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">web前端</a>
                                        <a href="#" class="aui-a-curr">Flash++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">html5</a>
                                        <a href="#">JavaScript</a>
                                        <a href="#" class="aui-a-curr">COCOS2D</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">U3D-X </a>
                                        <a href="#">css</a>
                                        <a href="#" class="aui-a-curr">js</a>
                                        <a href="#">jq</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>高端职位</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">技术经理 </a>
                                        <a href="#" class="aui-a-curr">技术总监++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#"> 架构师 </a>
                                        <a href="#">CTO</a>
                                        <a href="#" class="aui-a-curr"> 运维总监</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr"> 技术合伙人-X </a>
                                        <a href="#"> 项目总监 </a>
                                        <a href="#" class="aui-a-curr">测试总监</a>
                                        <a href="#"> 安全专家</a>
                                        <a href="#">  高端技术职位</a>
                                        <a href="#"> 其它</a>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="aui-content-menu ">
                            <div class="aui-content-menu-head">
                                <div class="aui-content-menu-head-list">
                                    <h2>设计</h2>
                                    <a href="#">交互设计</a>
                                    <a href="#">网页设计师</a>
                                    <a href="#">平面设计师</a>
                                    <i class="aui-content-menu-head-list-arrow"></i>
                                </div>
                            </div>
                            <div class="aui-content-menu-dow aui-ds">
                                <dl>
                                    <dt>
                                        <span>后端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">Java</a>
                                        <a href="#" class="aui-a-curr">C++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">数据挖掘</a>
                                        <a href="#">搜索算法</a>
                                        <a href="#" class="aui-a-curr">精准推荐</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">全栈工程师</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">Hadoop</a>
                                        <a href="#">Python</a>
                                        <a href="#" class="aui-a-curr">Delphi</a>
                                        <a href="#">Perl</a>
                                        <a href="#">Ruby</a>
                                        <a href="#">Node.js</a>
                                        <a href="#">Go</a>
                                        <a href="#">ASP</a>
                                        <a href="#">Shell</a>
                                        <a href="#">区块</a>
                                        <a href="#">后端开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>移动开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">HTML5</a>
                                        <a href="#" class="aui-a-curr">Android </a>
                                        <a href="#" class="aui-a-curr">iOS</a>
                                        <a href="#">移动</a>
                                        <a href="#">WP</a>
                                        <a href="#" class="aui-a-curr">css3</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">jquery</a>
                                        <a href="#">NET</a>
                                        <a href="#" class="aui-a-curr">其它</a>
                                        <a href="#">移动开发</a>
                                        <a href="#">其它</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>前端开发</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">web前端</a>
                                        <a href="#" class="aui-a-curr">Flash++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#">html5</a>
                                        <a href="#">JavaScript</a>
                                        <a href="#" class="aui-a-curr">COCOS2D</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr">U3D-X </a>
                                        <a href="#">css</a>
                                        <a href="#" class="aui-a-curr">js</a>
                                        <a href="#">jq</a>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>
                                        <span>高端职位</span>
                                    </dt>
                                    <dd>
                                        <a href="#" class="aui-a-curr">技术经理 </a>
                                        <a href="#" class="aui-a-curr">技术总监++ </a>
                                        <a href="#" class="aui-a-curr">PHP</a>
                                        <a href="#"> 架构师 </a>
                                        <a href="#">CTO</a>
                                        <a href="#" class="aui-a-curr"> 运维总监</a>
                                        <a href="#"> C C# </a>
                                        <a href="#" class="aui-a-curr"> 技术合伙人-X </a>
                                        <a href="#"> 项目总监 </a>
                                        <a href="#" class="aui-a-curr">测试总监</a>
                                        <a href="#"> 安全专家</a>
                                        <a href="#">  高端技术职位</a>
                                        <a href="#"> 其它</a>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        <div class="col-md-8">
            <div class="lunbo" style="padding-top:-100px;">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="./imgs/lunbo1.jpg" alt="...">
                        </div>
                        <div class="item">
                            <img src="./imgs/lunbo2.jpg" alt="...">
                        </div>
                        <div class="item">
                            <img src="./imgs/lunbo3.jpg" alt="...">
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- 公告栏 -->
    <div class="tell">
        <h3 style="font-family: 隶书;color:#1787FB">系统公告</h3>
        <div class="details">
            这里写公告吧
        </div>

    </div>
    <h3 style="font-family: 隶书;color:#1787FB;margin-left: 80px;">为您推荐</h3>
    <div class="introduce">

        <div class="row">
            <div class="col-md-4">
                <div class="single">
                    <h4 style="margin-top: 20px;">职位名称</h4>
                    <p>地点</p>
                    <p>公司名称</p>
                    <a href="">7000</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="single">
                    <h4 style="margin-top: 20px;">职位名称</h4>
                    <p>地点</p>
                    <p>公司名称</p>
                    <a href="">工资</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="single">
                    <h4 style="margin-top: 20px;">职位名称</h4>
                    <p>地点</p>
                    <p>公司名称</p>
                    <a href="">工资</a>
                </div>
            </div>
        </div>
    </div>

</div>
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
                <img src="./imgs/ff.jpg"></div>
            <div class="col-md-4"><img src="./imgs/ff.jpg"></div>
            <div class="col-md-4"><img src="./imgs/ff.jpg"></div>
            <span>未经开发人员同意，不得转载本网站之所有招聘信息及作品开发者权所有</span>
        </div><hr>
    </div>
</div>
</body>
</html>
