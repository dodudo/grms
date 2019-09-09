
<%@ page import="java.util.ArrayList" %>
<%@ page import="cn.ganin.dao.ResumeDAO" %>
<%@ page import="cn.ganin.entity.Resume" %>
<%--
  Created by IntelliJ IDEA.
  User: crumble
  Date: 2019/5/9
  Time: 18:18
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
    <title>简历</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/resume.css">
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
//    ArrayList<Resume> list1 = resumeDAO.getAllResume();
//    if(list1!=null&&list1.size()>0)
//    {
//        int i=0;
//        Resume re = list1.get(i);
%>
<div class="main-container">
    <div class="user_info">
        <div class="all_wrap">
            <table class="resume_boxt3">
                <tr class="head_tr">
                    <td width="230"><table class="mes_t3"><tbody>

                    <%--<label>--%>
                    <%--姓名：<%=re.getBas_name()%></label>--%>
                    <%--<label>性别：<%=re.getBas_sex()%></label>--%>
                    <%--<label>年龄：<%=re.getBas_age()%></label>--%>
                    <%--<label>城市：<%=re.getBas_city()%></label>--%>

                    <tr class="per_list3">
                        <td class="title_icon" valign="middle"><img src="https://img01.51jobcdn.com/im/2017/resumetemplate/xsl/icon1_type3.png"  width="17" height="16"></td>
                        <td class="limit1"><span class="gray top_info"><%=re.getResume_school()%></span></td>
                        <%--study--%>
                    </tr>
                    <tr class="per_list3">
                        <td class="title_icon" valign="middle"><img src="https://img01.51jobcdn.com/im/2017/resumetemplate/xsl/icon2_type3.png" width="17" height="16"></td>
                        <td class="limit1"><span class="gray top_info"><%=re.getResume_edu()%></span></td>
                    </tr>
                    <tr class="per_list3">
                        <td class="title_icon" valign="middle"><img src="https://img01.51jobcdn.com/im/2017/resumetemplate/xsl/icon4_type3.png" width="17" height="16"></td>
                        <td class="limit1"><span class="gray top_info"><%=re.getResume_stu_phone()%></span></td>
                    </tr>
                    <tr class="per_list3">
                        <td class="title_icon" valign="middle"><img src="https://img01.51jobcdn.com/im/2017/resumetemplate/xsl/icon5_type3.png"  width="17" height="16"></td>
                        <td class="limit1"><span class="gray top_info"><%=re.getResume_stu_email()%></span></td>
                    </tr>
                    </tbody>
                    </table>
                    </td>
                    <td><table class="people">
                        <tr>
                            <td><p class="name_t3"></p></td>
                        </tr>
                        <tr>
                            <td><p class="name_t3"><%=re.getResume_stu_name()%></p></td>
                        </tr>
                        <tr>
                            <td><p class="name_t3"><%=re.getResume_name()%></p></td>
                        </tr>
                    </table>
                    </td>
                </tr>
                <tr class="distance_b"></tr>
            </table>
            <table class="divide">
                <tbody>
                <tr>
                    <td class="top_line"><img src="https://img01.51jobcdn.com/im/2017/resumetemplate/xsl/divide_type3.png">
                    </td>
                </tr>
                </tbody>
            </table>
            <table class="mes_box3">
                <tbody>
                <tr>
                    <td class="bar_l">
                        <table class="per_title3">
                            <tbody>
                            <tr>
                                <td class="title_icon3" valign="bottom"><img src="https://img01.51jobcdn.com/im/2017/resumetemplate/xsl/icon6_type3.png" style="margin-top: -20px;" width="31" height="31"></td>
                                <td><p  style="margin-bottom:5px"class="title_txt3">基本信息</p></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="ess-info-show">
                            <span><label>姓名:</label><%=re.getResume_stu_name()%></span><br>
                            <span><label>性别：</label><%=re.getResume_stu_sex()%></span><br>
                            <%--<span><label>出生日期</label><%re.getResume_stu_phone()%></span><br>--%>
                            <span><label>联系电话:</label><%=re.getResume_stu_phone()%></span><br>
                            <span><label>邮箱地址:</label><%=re.getResume_stu_email()%></span><br>
                            <%--<span><label>地址:</label>数据导入</span><br>--%>
                            <span><label>兴趣爱好:</label></span><br>
                            <pre><%=re.getResume_hobby()%></pre>
                        </div>
                        <table class="per_title3">
                            <tbody>
                            <tr>
                                <td class="title_icon3" valign="bottom"><img src="https://img01.51jobcdn.com/im/2017/resumetemplate/xsl/icon7_type3.png" width="31" height="31"></td>
                                <td><p style="margin-bottom:5px" class="title_txt3">教育经历</p></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="education-show">
                            <span><label>毕业院校:</label><%=re.getResume_school()%></span>
                            <span><label>专业:</label><%=re.getResume_major()%></span><br>
                            <span><label>教育时间:</label><%=re.getResume_start_school()%>-<%=re.getResume_end_school()%></span>
                            <span><label></label></span>
                        </div>

                        <table class="per_title3">
                            <tbody>
                            <tr>
                                <td class="title_icon3" valign="bottom"><img src="https://img01.51jobcdn.com/im/2017/resumetemplate/xsl/icon8_type3.png" width="31" height="31"></td>
                                <td><p class="title_txt3" style="margin-bottom:5px">专业技能</p></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="work_experience-show">
                            <pre><%=re.getResume_skill()%></pre>
                        </div>
                        <table class="per_title3">
                            <tbody>
                            <tr>
                                <td class="title_icon3" valign="bottom"><img src="https://img01.51jobcdn.com/im/2017/resumetemplate/xsl/icon9_type3.png"  width="31" height="31"></td>
                                <td><p class="title_txt3" style="margin-bottom:5px">个人经历</p></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="process-show">
                            <h6>实习经历</h6>
                            <pre><%=re.getResume_internship()%></pre>
                            <h6>作品展示</h6>
                            <pre><%=re.getResume_works()%></pre>
                        </div>

                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <%
        }
    %>
</div>
</body>
</html>
