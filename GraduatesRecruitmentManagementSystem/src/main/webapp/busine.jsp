<%--
  Created by IntelliJ IDEA.
  User: crumble
  Date: 2019/4/19
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 企业信息表 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>企业中心</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/busine.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script>
        $(function () {
            var enterprise_industry_name = $("#enterprise_industry_name option");
            for (var i = 0 ;i < enterprise_industry_name.length;i++){
                console.log($(enterprise_industry_name[i]).val());
                $(enterprise_industry_name[i]).removeProp("selected");
                if ($(enterprise_industry_name[i]).val()=="${EnterpriseData.enterprise.enterprise_industry_name}") {
                    console.log($(enterprise_industry_name[i]));
                    $(enterprise_industry_name[i]).prop("selected","selected");
                }
            }
            var enterprise_scale = $("#enterprise_scale option");
            for (var i = 0 ;i < enterprise_scale.length;i++){
                console.log($(enterprise_scale[i]).val());
                $(enterprise_scale[i]).removeProp("selected");
                if ($(enterprise_scale[i]).val()=="${EnterpriseData.enterprise.enterprise_scale}") {
                    console.log($(enterprise_scale[i]));
                    $(enterprise_scale[i]).prop("selected","selected");
                }
            }
            var enterprise_nature = $("#enterprise_nature option");
            for (var i = 0 ;i < enterprise_nature.length;i++){
                console.log($(enterprise_nature[i]).val());
                $(enterprise_nature[i]).removeProp("selected");
                if ($(enterprise_nature[i]).val()=="${EnterpriseData.enterprise.enterprise_nature}") {
                    console.log($(enterprise_nature[i]));
                    $(enterprise_nature[i]).prop("selected","selected");
                }
            }

        });
        function publish(positionId) {
            if("${EnterpriseData.enterprise.enterprise_state}"=="待审核"){
                alert("您还未认证，请认证后才能发布职位！")
            }else if ("${EnterpriseData.enterprise.enterprise_state}"=="通过") {
                if (confirm("您确定要发布吗？")){
                    location.href="${pageContext.request.contextPath}/UpdatePositionPublisState?position_id="+positionId+"&enterprise_id=${EnterpriseData.enterprise.enterprise_id}";
                }
            }else {
                alert("您还未认证，请认证后才能发布职位！")
            }

        }
        function deletePosition(id){
            if (confirm("您确定要删除吗？")){
                location.href="${pageContext.request.contextPath}/DeletePositionServlet?id="+id;
            }
        }
        function deleteRecruit(id){
            if (confirm("您确定要退回吗？")){
                location.href="${pageContext.request.contextPath}/DeleteRecruitServlet?id="+id;
            }
        }
        edit = function(obj) {
            //data-target="#editjobs"
            // data-toggle="modal"
            var id =$(obj).attr("positionID");
            $(obj).attr("data-target","#editjobs");
            $(obj).attr("data-toggle","modal");
            $.get("${pageContext.request.contextPath}/FindOnePositionServlet",{"id":id},function (data) {
                console.log(data.position_id);
                $("#position_name").val(data.position_name);
                $("#position_id").val(data.position_id);
                $("#position_num").val(data.position_num);
                $("#position_salary").val(data.position_salary);
                $("#position_time").val(data.position_time);
                $("#position_address").val(data.position_address);
                $("#position_duty").val(data.position_duty);
                $("#position_edu").val(data.position_edu);
                $("#position_experience").val(data.position_experience);
                $("#position_desc").val(data.position_desc);
                $("#position_state").val(data.position_state);
                $("#position_start_time").val(data.position_start_time);
                $("#position_end_time").val(data.position_end_time);
                $("#updateForm").prop("action","${pageContext.request.contextPath}/updatePositionServlet");
            });

        }

    </script>

</head>
<body>
<div class="top-bar" >
    <nav class="navbar navbar-default navbar-fixed-top row" style="background-color: white">
        <div class="col-md-8"></div>
        <div class="col-md-4 col-xs-4">
            <ul class="nav nav-pills ban ul2">
                <li role="presentation" style="margin-top: 10px;">欢迎回来，${EnterpriseData.enterprise.enterprise_username}<!-- 用户名 --></li>
                <li role="presentation"><a href="#" target="_self">个人中心</a> </li>
                <li role="presentation"><a href="${pageContext.request.contextPath}/FindEnterpriseDataServlet" target="_self">刷新</a> </li>
            </ul>
        </div>
        <div class="search">
            <form action="/index/search">
                <input type="text" name="find" placeholder="请输入您所寻找的职位">
                <input style="width: 80px;background-color: #1787FB;color: white" value="查找" id="searchs" type="submit">
            </form>
        </div>
    </nav>
</div>
<div class="title-my">
    <div class="tt"><h3>企业中心</h3></div>
</div>
<div class="my-container row">
    <div class="col-md-3 left">
        <img src="../imgs/ll.jpg">
        <p>${EnterpriseData.enterprise.enterprise_username}</p>
        <div class="left-two">
            <a href="#ess">基本信息</a>
        </div>
        <div class="left-two">
            <a href="#newjob">发布职位</a>
        </div>
        <div class="left-two">
            <a href="#jobmanage">职位管理</a>
        </div>
        <div class="left-two" style="margin-bottom: 30px">
            <a href="#resumpre" style="margin-left: 90px;">简历接收情况</a>
        </div>
    </div>
    <div class="col-md-7 right">
        <div class="right-one" id="ess">
            <h3>基本信息</h3>
            <!-- 显示的部分 -->
            <div class="info-show" id="info-show">
                <table>
                    <tr>
                        <td><label>企业名称:</label></td>
                        <td>${EnterpriseData.enterprise.enterprise_name}</td>
                        <td><label>所属行业:</label></td>
                        <td>${EnterpriseData.enterprise.enterprise_industry_name}</td>
                    </tr>
                    <tr>
                        <td><label>企业性质:</label></td>
                        <td>${EnterpriseData.enterprise.enterprise_nature}</td>
                        <td><label>企业规模:</label></td>
                        <td>${EnterpriseData.enterprise.enterprise_scale}</td>
                    </tr>
                    <tr>
                        <td><label>联系邮箱:</label></td>
                        <td>${EnterpriseData.enterprise.enterprise_email}</td>
                        <td><label>企业电话:</label></td>
                        <td>${EnterpriseData.enterprise.enterprise_phone}</td>
                    </tr>
                    <tr>
                        <td><label>联系人:</label></td>
                        <td>${EnterpriseData.enterprise.enterprise_contact}</td>
                    </tr>
                    <td><label>企业地址:</label></td>
                    <td colspan="3">${EnterpriseData.enterprise.enterprise_address}</td>
                    <tr>
                        <td><label>公司简介</label></td>
                        <td colspan="3" style="border:1px dashed lightgrey;">${EnterpriseData.enterprise.enterprise_desc}</td>
                    </tr>
                </table>
            </div>
            <button class="btn btn-info" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample" id="info_edit" style="margin-top:20px;">
                编辑企业信息
            </button>
            <div class="collapse" id="collapseExample">
                <div class="well">
                    <form method="post" action="${pageContext.request.contextPath}/UpdateEnterpriseServlet" class="form-inline" role="form">
                        <input type="hidden" name="enterprise_id" value="${EnterpriseData.enterprise.enterprise_id}">
                        <label>
                            <span>企业名称:</span>
                            <input class="form-control" type="text" value="${EnterpriseData.enterprise.enterprise_name}" name="enterprise_name">
                        </label><br>
                        <label>
                            <span>公司类型:</span>
                            <select id="enterprise_industry_name" name="enterprise_industry_name" class="form-control">
                                <option value="文化/传媒/娱乐/体育">文化/传媒/娱乐/体育</option>
                                <option value="生产/加工/制造">生产/加工/制造</option>
                                <option value="交通/运输/物流/仓储">交通/运输/物流/仓储</option>
                                <option value="能源/矿产/环保">能源/矿产/环保</option>
                                <option value="政府/非盈利机构">政府/非盈利机构</option>
                                <option value="基金/证券/期货/投资">基金/证券/期货/投资</option>
                                <option value="IT/通信/电子/互联网">IT/通信/电子/互联网</option>
                                <option value="金融业">金融业</option>
                                <option value="房地产/建筑业">房地产/建筑业</option>
                                <option value="贸易/批发/零售/租赁业">贸易/批发/零售/租赁业</option>
                                <option value="服务业">服务业</option>
                                <option value="农/林/牧/鱼/其他">农/林/牧/鱼/其他</option>
                            </select>
                        </label>
                        <label>
                            <span>公司规模:</span>
                            <select class="form-control" id="enterprise_scale" name="enterprise_scale">
                                <option value="50人以下">50人以下</option>
                                <option value="50-100人">50-100人</option>
                                <option value="100-500人">100-500人</option>
                                <option value="500人以上">500人以上</option>
                                <option value="500-1000人">500-1000人</option>
                                <option value="1000人以上">1000人以上</option>
                            </select>
                        </label>
                        <label>
                            <span>公司性质:</span>
                            <select class="form-control" id="enterprise_nature" name="enterprise_nature">
                                <option value="民办企业">民办企业</option>
                                <option value="国营企业">国营企业</option>
                                <option value="外企">外企</option>
                                <option value="中外合办">中外合办</option>
                                <option value="小型个体">小型个体</option>
                            </select>
                        </label>
                        <br>
                        <label>
                            <span>公司地址:</span>
                            <input class="form-control" type="text" value="${EnterpriseData.enterprise.enterprise_address}" name="enterprise_address">
                        </label>
                        <label>
                            <span>联系邮箱:</span>
                            <input class="form-control" value="${EnterpriseData.enterprise.enterprise_email}" type="text" name="enterprise_email">
                        </label>
                        <label>
                            <span>企业网址:</span>
                            <input class="form-control" value="${EnterpriseData.enterprise.enterprise_website}" type="text" name="enterprise_website">
                        </label>
                        <label>
                            <span>企业电话:</span>
                            <input class="form-control" value="${EnterpriseData.enterprise.enterprise_phone}" type="tel" name="enterprise_phone">
                        </label>
                        <label>
                            <span>企业联系人:</span>
                            <input class="form-control" value="${EnterpriseData.enterprise.enterprise_contact}" type="text" name="enterprise_contact">
                        </label><br>
                        <label>
                            <span>公司简介：</span>
                            <textarea class="form-control" name="enterprise_desc" rows="15" cols="80">${EnterpriseData.enterprise.enterprise_desc}</textarea>
                        </label><br>
                        <input type="submit" value="保存并更新" class="btn btn-success" >
                        <input type="reset" value="重置" class="btn btn-danger">
                    </form>

                </div>
            </div>

        </div>
        <div class="right-one" id="newjob">
            <h3>发布职位</h3>
            <button class="btn btn-block btn-lg" data-toggle="modal" data-target="#newjobs" style="background-color: #4876FF;color: white">
                发布新职位
            </button>
            <div class="modal fade" id="newjobs" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">编辑职位</h4>
                        </div>
                        <div class="modal-body">
                            <form method="post" action="${pageContext.request.contextPath}/AddPositionServlet" name="myformtwo" class="form-inline" role="form">
                                <h4>基本信息</h4><hr>
                                <input type="hidden" value="${EnterpriseData.enterprise.enterprise_id}" name="position_enterprise_id">
                                <input type="hidden" value="未发布" name="position_publish_state">
                                <label>
                                    <span>职位名称:</span>
                                    <input  class="form-control"  id="name" type="text" name="position_name" />
                                </label><br>
                                <label>
                                    <span>招聘人数:</span>
                                    <input type="number"  class="form-control"  name="position_num"></label>
                                <label>
                                    <span>薪资说明:</span>
                                    <input type="text"  class="form-control"  name="position_salary">
                                </label><br>
                                <label>
                                    <span>工作时间:</span>
                                    <input type="text"  class="form-control"  name="position_time">
                                </label>
                                <label>
                                    <span>工作地址:</span>
                                    <input type="text"  class="form-control"  name="position_address">
                                </label>
                                <label>
                                    <span>岗位职责:</span>
                                    <textarea cols="64" rows="5" type="text"  class="form-control"  name="position_duty"></textarea>
                                </label>
                                <h4>人才要求</h4><hr>
                                <label>
                                    <span>学历要求:</span>
                                    <input  class="form-control"  type="text" name="position_edu">
                                </label>
                                <label>
                                    <span>经验要求:</span>
                                    <textarea cols="64" rows="2" type="text"  class="form-control"  name="position_experience"></textarea>
                                    <label><br>
                                        <span>职位要求:</span> <textarea cols="64" rows="2" type="text"  class="form-control"  name="position_desc"></textarea>
                                    </label>
                                    <h4>职位状态</h4><hr>
                                    <label>
                                        <span >招聘状态:</span>
                                        <select class="form-control" name="position_state">
                                            <option value="招聘中">招聘中</option>
                                            <option value="招聘结束">招聘结束</option>
                                        </select>
                                    </label>
                                    <label>
                                        <span>开始日期:</span>
                                        <input  class="form-control"  type="date" name="position_start_time">
                                    </label>
                                    <label>
                                        <span>截止日期:</span>
                                        <input  class="form-control"  type="date" name="position_end_time">
                                    </label>
                                    <hr>
                                    <input  type="submit" name="" value="提交"  class="btn btn-success">
                                    <input  type="button" class="btn btn-danger" data-dismiss="modal" value="关闭" />


                                </label>
                            </form>
                        </div>

                    </div><!-- /.modal-content -->
                </div><!-- /.modal -->
            </div>

        </div>
        <div class="right-one" id="jobmanage">
            <h3>职位管理</h3>
            <h4>已发布</h4>
            <table  class="table table-striped">

                <tr>
                    <th>开始时间</th>
                    <th>岗位名称</th>
                    <th>岗位编号</th>
                    <th>当前状态</th>
                    <th>编辑操作</th>
                    <th>删除</th>
                </tr>
                <c:forEach items="${EnterpriseData.positionPublishedList}" var="positionPublished" varStatus="vs">
                    <tr>
                        <td>${positionPublished.position_start_time}</td>
                        <td>${positionPublished.position_name}</td>
                        <td>${positionPublished.position_id}</td>
                        <td>${positionPublished.position_state}</td>
                        <td><a num="${vs.index}" href="${pageContext.request.contextPath}/UpdatePositionState?positionState=${positionPublished.position_state}&positionID=${positionPublished.position_id}&id=${EnterpriseData.enterprise.enterprise_id}" class="btn btn-blck btn-lg" style="background-color:white;color:blue;width: 100%;">更改招聘状态</a></td>
                        <td><a href="javascript:deletePosition(${positionPublished.position_id})">删除</a></td>
                    </tr>
                </c:forEach>
            </table>
            <h4>未发布</h4>
            <table  class="table table-striped">
                <tr>
                    <th>开始时间</th>
                    <th>岗位名称</th>
                    <th>岗位编号</th>
                    <th>当前状态</th>
                    <th>编辑操作</th>
                    <th>发布操作</th>
                    <th>删除</th>
                </tr>
                <c:forEach items="${EnterpriseData.positionPublishingList}" var="positionPublishing" varStatus="vs">
                    <tr>
                        <td>${positionPublishing.position_start_time}</td>
                        <td>${positionPublishing.position_name}</td>
                        <td>${positionPublishing.position_id}</td>
                        <td>${positionPublishing.position_state}</td>
                        <td><a class="btn btn-block btn-lg"   href="javascript:void(0)" positionID="${positionPublishing.position_id}" onclick="edit(this)" style="background-color: white;color:blue">
                            编辑
                        </a></td>
                        <td>
                            <a class="btn btn-block btn-lg" href="javascript:publish(${positionPublishing.position_id})"  style="background-color: white;color:blue">
                                发布
                            </a>
                        </td>
                        <td><a href="javascript:deletePosition(${positionPublishing.position_id})">删除</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="right-one" id="resumpre">
            <h3>简历接收情况</h3>
            <table  class="table table-striped">
                <tr>
                    <th>职位编号</th>
                    <th>岗位名称</th>
                    <th>截止时间</th>
                    <th>投递用户</th>
                    <th>简历状态</th>
                    <th>简历查看</th>
                    <th>简历操作</th>
                </tr>
                <c:forEach items="${EnterpriseData.enterpriseResumeList}" var="resume" varStatus="vs">
                    <tr>
                        <td>${resume.position_id}</td>
                        <td>${resume.position_name}</td>
                        <td>${resume.position_end_time}</td>
                        <td>${resume.stu_name}</td>
                        <td>${resume.recruit_state}</td>
                        <td><a href="/resume.jsp?resume_id=${resume.resume_id}">查看简历</a></td>
                        <td>
                            <a href="${pageContext.request.contextPath}/UpdateRecruitState?recruit_id=${resume.recruit_id}&id=${EnterpriseData.enterprise.enterprise_id}">已阅</a>
                            <a href="javascript:deleteRecruit(${resume.recruit_id})">删除</a>
                        </td>
                    </tr>
                </c:forEach>

            </table>
        </div>
    </div>
</div>



<!-- 表格里的编辑 -->

<div class="modal fade" id="editjobs"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">编辑职位</h4>
            </div>
            <div class="modal-body">
                <form method="post" action="" id="updateForm" name="editform" class="form-inline" role="form">
                    <h4>基本信息</h4><hr>
                    <input type="hidden" name="position_id" id="position_id">
                    <input type="hidden" name="enterpirse_id" value="${EnterpriseData.enterprise.enterprise_id}">
                    <label>
                        <span>职位名称:</span>
                        <input  class="form-control"  id="position_name" type="text" name="position_name" />
                    </label><br>
                    <label>
                        <span>招聘人数:</span>
                        <input type="number"  class="form-control" id="position_num"  name="position_num"></label>
                    <label>
                        <span>薪资说明:</span>
                        <input type="text"  class="form-control" id="position_salary"  name="position_salary">
                    </label><br>
                    <label>
                        <span>工作时间:</span>
                        <input type="text"  class="form-control" id="position_time"  name="position_time">
                    </label>
                    <label>
                        <span>工作地址:</span>
                        <input type="text"  class="form-control" id="position_address"  name="position_address">
                    </label>
                    <label>
                        <span>岗位职责:</span>
                        <textarea cols="64" rows="5" type="text"  class="form-control" id="position_duty" name="position_duty"></textarea>
                    </label>
                    <h4>人才要求</h4><hr>
                    <label>
                        <span>学历要求:</span>
                        <input  class="form-control"  type="text" id="position_edu" name="position_edu">
                    </label>
                    <label>
                        <span>经验要求:</span>
                        <textarea cols="64" rows="2" type="text"  class="form-control" id="position_experience" name="position_experience"></textarea>
                        <label><br>
                            <span>职位要求:</span> <textarea cols="64" rows="2" type="text"  class="form-control" id="position_desc"  name="position_desc"></textarea>
                        </label>
                        <h4>职位状态</h4><hr>
                        <label>
                            <span >招聘状态:</span>
                            <select class="form-control" id="position_state" name="position_state">
                                <option value="招聘中">招聘中</option>
                                <option value="招聘结束">招聘结束</option>
                            </select>
                        </label>
                        <label>
                            <span>开始日期:</span>
                            <input  class="form-control"  type="date" id="position_start_time" name="position_start_time">
                        </label>
                        <label>
                            <span>截止日期:</span>
                            <input  class="form-control"  type="date" id="position_end_time" name="position_end_time" >
                        </label>
                        <hr>
                        <input  type="submit" name=""  value="提交"  class="btn btn-success">
                        <input  type="button" class="btn btn-danger" data-dismiss="modal" value="关闭" />
                    </label></form>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
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
