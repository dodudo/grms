
<%@ page import="java.util.ArrayList" %>
<%@ page import="cn.ganin.dao.ResumeDAO" %>
<%@ page import="cn.ganin.entity.Resume" %><%--
  Created by IntelliJ IDEA.
  User: crumble
  Date: 2019/5/10
  Time: 14:49
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
    <title>简历编辑</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/Update Resume.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%
    ResumeDAO resumeDAO = new ResumeDAO();
    int state=Integer.parseInt(request.getParameter("resume_id"));
    Resume re = resumeDAO.getResumeById(state);
    if(re!=null)
    {
%>
<div class="title-my">
    <div class="tt"><h3>简历修改</h3></div>
</div>
<div class="container">
    <form class="form-inline" action="${pageContext.request.contextPath}/servlet/ResumeUpdateServlet">
        <input type="hidden" name="resume_id" value="<%=re.getResume_id()%>">
        简历名称：<input class="form-control" type="text" name="resume_name" value="<%=re.getResume_name()%>">
        <hr>
        <h4 id="basime">基本信息</h4>
        学号:<input type="number" name="resume_stu_id" class="form-control" value="<%=re.getResume_stu_id()%>">
        <br>
        姓名:<input class="form-control" type="text" name="resume_stu_name" value="<%=re.getResume_stu_name()%>">
        &nbsp;         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;性别： <input class="form-control" type="text" name="resume_stu_sex" value="<%=re.getResume_stu_sex()%>">
        <br>
        联系电话:<input class="form-control" type="text" name="resume_stu_phone" value="<%=re.getResume_stu_phone()%>">
        &nbsp; &nbsp; &nbsp;邮箱:<input class="form-control" type="email" name="resume_stu_email" value="<%=re.getResume_stu_email()%>">
        <hr>
        <h4 name="eduA">教育经历</h4>
        毕业院校:<input class="form-control" type="text" name="resume_school" value="<%=re.getResume_school()%>"><br>
        专业:<input class="form-control" type="text" name="resume_major" value="<%=re.getResume_major()%>"><br>
        学历:<input class="form-control" type="text" name="resume_edu" value="<%=re.getResume_edu()%>"><br>
        学业开始时间:
        <input class="form-control" type="date" name="resume_start_school" value="<%=re.getResume_start_school()%>">
        &nbsp; &nbsp; &nbsp; &nbsp;结束时间:
        <input class="form-control" type="date" name="resume_end_school" value="<%=re.getResume_end_school()%>">                 <hr>
        <h4>个人描述</h4><br>
        <textarea name="resume_desc" class="form-control"  cols="90" rows="5" value="<%=re.getResume_desc()%>"></textarea><hr>
        <h4>实习经历</h4><br>
        <textarea  name="resume_internship" class="form-control"  cols="90" rows="5" value="<%=re.getResume_internship()%>"></textarea><hr>
        <h4>校园实践</h4><br>
        <textarea name="resume_practice" class="form-control"  cols="90" rows="5" value="<%=re.getResume_practice()%>"></textarea><hr>
        <h4>专业技能</h4><br>
        <textarea name="resume_skill" class="form-control"  cols="90" rows="5" value="<%=re.getResume_skill()%>"></textarea><hr>
        <h4>兴趣爱好</h4><br>
        <textarea name="resume_hobby" class="form-control"  cols="90" rows="5" value="<%=re.getResume_hobby()%>"></textarea><hr>
        <h4>作品展示</h4><br>
        <textarea name="resume_works" class="form-control"  cols="90" rows="5" value="<%=re.getResume_works()%>"></textarea>
        <hr>
        <input  type="submit" name="" value="保存"  class="btn btn-success" style="margin-bottom: 20px;">
    </form>
    <%
        }
    %>
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
                <img src="../imgs/ff.jpg"></div>
            <div class="col-md-4"><img src="../imgs/ff.jpg"></div>
            <div class="col-md-4"><img src="../imgs/ff.jpg"></div>
            <span>未经开发人员同意，不得转载本网站之所有招聘信息及作品开发者权所有</span>
        </div><hr>
    </div>
</div>
</body>
</html>
