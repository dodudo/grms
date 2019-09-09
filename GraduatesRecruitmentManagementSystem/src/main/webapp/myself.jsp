<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="javax.swing.text.AbstractDocument" %>
<%@ page import="java.util.ArrayList" %>

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

<!-- 个人中心 -->

<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/myself.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="top-bar" >
    <nav class="navbar navbar-default navbar-fixed-top row" style="background-color: white">
        <div class="col-md-8"></div>
        <div class="col-md-4 col-xs-4">
            <ul class="nav nav-pills ban ul2">
                <li role="presentation" style="margin-top: 10px;">欢迎回来，${student.stu_name}</li>
                <li role="presentation"><a href="${pageContext.request.contextPath}/index/home.html">主页</a> </li>
                <li role="presentation"><a href="./myself.jsp" target="_self">个人中心</a> </li>
                <li role="presentation"><a href="${pageContext.request.contextPath}/ShowServlet?stu_id=${student.stu_id}" target="_self">刷新</a> </li>
            </ul>
        </div>
        <div class="search">
            <form method="get" action="${pageContext.request.contextPath}/index/search?find=">
                <input type="text" name="find" placeholder="请输入您所寻找的职位">
                <input style="width: 80px;background-color: #1787FB;color: white" type="submit" value="查找">
            </form>
        </div>
    </nav>
</div>
<div class="title-my">
    <div class="tt"><h3>个人中心</h3></div>
</div>
<div class="my-container row">
    <div class="col-md-3 left ">
        <div class="left-one">
            <img src="./imgs/pp.png">
            <p>${student.stu_name}</p>
        </div><hr>
        <div class="left-two">
            <a href="#ess">基本信息</a>
        </div>
        <div class="left-two">
            <a href="#addnew">添加简历</a>
        </div>
        <div class="left-two">
            <a href="#controll">简历管理</a>
        </div>
        <div class="left-two">
            <a href="#back">投递回馈</a>
        </div><hr>

        <%
            String list ="";
            //从客户端获得Cookies集合
            Cookie[] cookies = request.getCookies();
            //遍历这个Cookies集合
            if(cookies!=null&&cookies.length>0)
            {
                for(Cookie c:cookies)
                {
                    if(c.getName().equals("ListViewCookie"))
                    {
                        list = c.getValue();
                    }
                }
            }

            list+=request.getParameter("position_id")+"#";
            //如果浏览记录超过1000条，清零.
            String[] arr = list.split("#");
            if(arr!=null&&arr.length>0)
            {
                if(arr.length>=1000)
                {
                    list="";
                }
            }
            Cookie cookie = new Cookie("ListViewCookie",list);
            /* System.out.println(list); */
            response.addCookie(cookie);

        %>

        <%--<%--%>
            <%--ResumeDAO resumeDAO1 = new ResumeDAO();--%>
            <%--ArrayList<Position> positionlist = resumeDAO1.getViewList(list);--%>
            <%--if(positionlist!=null&&positionlist.size()>0 )--%>
            <%--{--%>
                <%--System.out.println("positionlist.size="+positionlist.size());--%>
                <%--for(Position p:positionlist)--%>
                <%--{--%>
        <%--%>--%>
        <%--<div class="viewhistory">--%>
            <%--<div class="viewone row">--%>
                <%--<div class="col-md-6"><%=p.getPosition_edu()%></div>--%>
                <%--<div class="col-md-6"><%=p.getPosition_address()%></div>--%>
            <%--</div>--%>
            <%--<div class="viewtwo">--%>
                <%--<a href=""><%=p.getPosition_name()%></a>--%>
            <%--</div>--%>
            <%--<div class="viewthree row">--%>
                <%--<div class="col-md-6"><%=p.getPosition_enterprise_id()%></div>--%>
                <%--<div class="col-md-6"><%=p.getPosition_salary()%></div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<%--%>
                <%--}--%>
            <%--}--%>
        <%--%>--%>
    </div>

    <div class="col-md-7 right">
        <div class="right-one">
            <h3>基本信息</h3>
            <div  id="info-show">
                <table>
                    <tr>
                        <td><label>姓名:</label></td>
                        <td>${student.stu_name}</td>
                        <td><label>学号:</label></td>
                        <td>${student.stu_id}</td>
                    </tr>
                    <tr>
                        <td><label>性别:</label></td>
                        <td>${student.stu_sex}</td>
                        <td><label>年龄:</label></td>
                        <td>${student.stu_age}</td>
                    </tr>
                    <tr>
                        <td><label>电话:</label></td>
                        <td>${student.stu_phone}</td>
                        <td><label>邮箱:</label></td>
                        <td>${student.stu_email}</td>
                    </tr>
                    <tr>
                        <td><label>学校:</label></td>
                        <td>${student.stu_college_name}</td>
                    </tr>
                    <td><label>专业:</label></td>
                    <td colspan="3">${student.stu_major_name}</td>
                </table>
            </div>
            </div>
        <hr>
        <div class="right-one"id="addnew">
            <h3>添加简历</h3>
            <button class="btn btn-block btn-lg" data-toggle="modal" data-target="#myModal" style="background-color: #4876FF;color: white">
                添加简历
            </button>
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <%--<div class="modal-header">--%>
                            <%--<h4 class="modal-title" id="myModalLabel">--%>
                                <%--简历编辑--%>
                            <%--</h4>--%>
                        <%--</div>--%>
                        <div class="modal-body">
                            <form method="post" action="${pageContext.request.contextPath}/servlet/ResumeAddServlet" name="myform" class="form-inline" role="form">
                                   简历名称：<input class="form-control" type="text" name="resume_name">
                                    <hr>
                                <h4 id="basime">基本信息</h4>
                                学号:<input type="number" name="resume_stu_id" class="form-control">
                                <br>
                                姓名:<input class="form-control" type="text" name="resume_stu_name">
                                <%--性别:<select class="form-control" name="resume_stu_sex">--%>
                                <%--<option value="man">男</option>--%>
                                <%--<option value="woman">女</option>--%>
                                   性别： <input class="form-control" type="text" name="resume_stu_sex">
                            </select><br>
                                    联系电话:<input class="form-control" type="text" name="resume_stu_phone">
                                    邮箱:<input class="form-control" type="email" name="resume_stu_email">
                                <hr>
                                <h4 name="eduA">教育经历</h4>
                                毕业院校:<input class="form-control" type="text" name="resume_school"><br>
                                专业:<input class="form-control" type="text" name="resume_major"><br>
                                    学历:<input class="form-control" type="text" name="resume_edu"><br>
                                学业开始时间:
                                <input class="form-control" type="date" name="resume_start_school">
                                结束时间:
                                <input class="form-control" type="date" name="resume_end_school">                 <hr>
                                <h4>个人描述</h4><br>
                                <textarea name="resume_desc" class="form-control"  cols="90" rows="5"></textarea><hr>
                                <h4>实习经历</h4><br>
                                <textarea  name="resume_internship" class="form-control"  cols="90" rows="5"></textarea><hr>
                                    <h4>校园实践</h4><br>
                                    <textarea name="resume_practice" class="form-control"  cols="90" rows="5"></textarea><hr>
                                <h4>专业技能</h4><br>
                                <textarea name="resume_skill" class="form-control"  cols="90" rows="5"></textarea><hr>
                                <h4>兴趣爱好</h4><br>
                                <textarea name="resume_hobby" class="form-control"  cols="90" rows="5"></textarea><hr>
                                <h4>作品展示</h4><br>
                                <textarea name="resume_works" class="form-control"  cols="90" rows="5"></textarea>
                                <hr>
                                <input  type="submit" name="" value="保存"  class="btn btn-success">
                                <input  type="button" class="btn btn-danger" data-dismiss="modal" value="关闭" />

                            </form>
                        </div>
                    </div>
                </div>
            </div><hr>
        </div>


        <div class="right-one" id="controll">
            <h3>简历管理</h3>
            <div class="row control">

                    <c:forEach items="${StudentData.resumeIdList}" var="resume" varStatus="vs">
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img src="./imgs/jl.jpg">
                                <div class="caption">
                                    <h4>${resume.resume_name}</h4>
                                    <p>
                                        <a href="${pageContext.request.contextPath}/resume.jsp?resume_id=${resume.resume_id}&id=${StudentData.student.stu_id}" class="btn btn-default" role="button"> 查看</a>
                                        <a href="${pageContext.request.contextPath}/UpdateResume.jsp?resume_id=${resume.resume_id}&id=${StudentData.student.stu_id}" class="btn btn-primary" role="button" <%--data-toggle="modal" data-target="#editModal"--%>> 编辑</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

            </div>
        </div><hr>

        <%--<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
            <%--<div class="modal-dialog">--%>
                <%--<div class="modal-content">--%>
                    <%--<div class="modal-header">--%>
                        <%--<h4 class="modal-title" id="myModalLabel">--%>
                            <%--简历编辑--%>
                        <%--</h4>--%>
                    <%--</div>--%>
                    <%--<div class="modal-body">--%>
                        <%--<form method="post" action="${pageContext.request.contextPath}/servlet/ResumeUpdateServlet" name="editform" class="form-inline" role="form">--%>
                            <%--简历名称：<input class="form-control" type="text" name="resume_name" value="${StudentData.resumeIdList.resume_name}">--%>
                            <%--<hr>--%>
                            <%--<h4 id="basime">基本信息</h4>--%>
                            <%--学号:<input type="number" name="resume_stu_id" class="form-control" value="${StudentData.student.stu_id}">--%>
                            <%--<br>--%>
                            <%--姓名:<input class="form-control" type="text" name="resume_stu_name" value="${StudentData.student.stu_name}">--%>
                            <%--&lt;%&ndash;性别:<select class="form-control" name="resume_stu_sex">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<option value="man">男</option>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<option value="woman">女</option>&ndash;%&gt;--%>
                            <%--性别： <input class="form-control" type="text" name="resume_stu_sex" value="${StudentData.student.stu_sex}">--%>
                            <%--&lt;%&ndash;</select>&ndash;%&gt;--%>
                            <%--<br>--%>
                            <%--联系电话:<input class="form-control" type="text" name="resume_stu_phone" value="${StudentData.student.stu_phone}">--%>
                            <%--邮箱:<input class="form-control" type="email" name="resume_stu_email" value="${StudentData.student.stu_email}">--%>
                            <%--<hr>--%>
                            <%--<h4 name="eduA">教育经历</h4>--%>
                            <%--毕业院校:<input class="form-control" type="text" name="resume_school" value="${StudentData.resumeIdList.resume_school}"><br>--%>
                            <%--专业:<input class="form-control" type="text" name="resume_major" value="${StudentData.resumeIdList.resume_major}"><br>--%>
                            <%--学历:<input class="form-control" type="text" name="resume_edu" value="${StudentData.resumeIdList.resume_edu}"><br>--%>
                            <%--学业开始时间:--%>
                            <%--<input class="form-control" type="date" name="resume_start_school" value="${StudentData.resumeIdList.resume_start_school}">--%>
                            <%--结束时间:--%>
                            <%--<input class="form-control" type="date" name="resume_end_school" value="${StudentData.resumeIdList.resume_end_school}">                 <hr>--%>
                            <%--<h4>个人描述</h4><br>--%>
                            <%--<textarea name="resume_desc" class="form-control"  cols="90" rows="5" value="${StudentData.resumeIdList.resume_desc}"></textarea><hr>--%>
                            <%--<h4>实习经历</h4><br>--%>
                            <%--<textarea  name="resume_internship" class="form-control"  cols="90" rows="5" value="${StudentData.resumeIdList.resume_internship}"></textarea><hr>--%>
                            <%--<h4>校园实践</h4><br>--%>
                            <%--<textarea name="resume_practice" class="form-control"  cols="90" rows="5" value="${StudentData.resumeIdList.resume_practice}"></textarea><hr>--%>
                            <%--<h4>专业技能</h4><br>--%>
                            <%--<textarea name="resume_skill" class="form-control"  cols="90" rows="5" value="${StudentData.resumeIdList.resume_skill}"></textarea><hr>--%>
                            <%--<h4>兴趣爱好</h4><br>--%>
                            <%--<textarea name="resume_hobby" class="form-control"  cols="90" rows="5" value="${StudentData.resumeIdList.resume_hobby}"></textarea><hr>--%>
                            <%--<h4>作品展示</h4><br>--%>
                            <%--<textarea name="resume_works" class="form-control"  cols="90" rows="5" value="${StudentData.resumeIdList.resume_works}"></textarea>--%>
                            <%--<hr>--%>
                            <%--<input  type="submit" name="" value="保存"  class="btn btn-success">--%>
                            <%--<input  type="button" class="btn btn-danger" data-dismiss="modal" value="关闭" />--%>
                        <%--</form>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>

        <div class="right-one" id="back">
            <h3>投递回馈</h3>
            <table  class="table table-striped">
                <%--<thead>--%>
                <tr>
                    <th>公司名称</th>
                    <th>岗位名称</th>
                    <th>简历名称</th>
                    <th>当前状态</th>
                </tr>
                    <%--</thead>--%>
                <c:forEach items="${StudentData.studentPostionList}" var="sp" varStatus="vs">
                <tr>
                    <th>${sp.enterprise_name}</th>
                    <th>${sp.position_name}</th>
                    <th>${sp.resume_name}1</th>
                    <th>${sp.recruit_state}</th>
                </tr>
                </c:forEach>
                <%--<tr>--%>
                    <%--<th>001</th>--%>
                    <%--<th>001</th>--%>
                    <%--<th>001</th>--%>
                    <%--<th>001</th>--%>
                    <%--<th>001</th>--%>
                <%--</tr>--%>
            </table>
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