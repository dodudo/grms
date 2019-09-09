<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/18
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>学生信息管理页面</title>
    <!-- 引入bootstrap样式 -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <!-- 引入bootstrap-table样式 -->
    <link href="https://cdn.bootcss.com/bootstrap-table/1.11.1/bootstrap-table.min.css" rel="stylesheet">
    <link href="css/bootstrap-table.min.css" rel="stylesheet">
    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/2.2.3/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <!-- bootstrap-table.min.js -->

    <script src="https://cdn.bootcss.com/bootstrap-table/1.11.1/bootstrap-table.min.js"></script>
    <!-- 引入中文语言包 -->
    <script src="https://cdn.bootcss.com/bootstrap-table/1.11.1/locale/bootstrap-table-zh-CN.min.js"></script>
    <script src="js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body >
<div class="header">
    <div class="logo"><h3 class="header-title">毕业生就业信息管理系统</h3></div>
    <div class="level">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <span class="dropdown-text">退出登录</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
                <li class="dropdown"><a href="#">个人中心</a></li>
                <li class="dropdown"><a href="/login.jsp">退出</a></li>
                <li class="dropdown"><a href="#">Jasper Report</a></li>
            </ul>
    </div>
</div>

<div class="lead">
    <ul class="breadcrumb">
        <li><a href="/dologin.jsp"><span class="lead-text">学生信息管理</span></a></li>
        <li><a href="/EnterpriseManaServlet"><span class="lead-text">企业信息管理</span></a></li>
        <li><a href="/PositionManaServlet"><span class="lead-text">招聘信息管理</span></a></li>
    </ul>
</div>



<!--表格-->
<div class="container">
    <div class="row">
        <div class="col-md-8">

        </div>
    </div>
    <div class="row">
        <div class="col-md-12">

            <table id="myTable">
                <c:forEach items="${requestScope.list}" var="v" >
                    <%--<a href="/servlet/RevServlet?get=${v.stu_id}" target="_blank">--%>
                    <tr>

                        <td></td>
                        <td>${v.stu_id}</td>
                        <td>${v.stu_name}</td>
                        <td>${v.stu_age}</td>
                        <td>${v.stu_sex}</td>
                        <td>${v.stu_college_name}</td>
                        <td>${v.stu_major_name}</td>
                        <td>${v.stu_email}</td>
                        <td>${v.stu_phone}</td>
                        <td>${v.sum}</td>
                        <td></td>
                    </tr>
                    <%--</a>--%>
                </c:forEach>

            </table>
        </div>
    </div>
</div>
<script>

    $(function () {
        var itable = TableInit();
        itable.Init();
    });

    var TableInit = function () {
        var myTableInit = new Object();

        myTableInit.Init = function () {
            $("#myTable").bootstrapTable({
                url: '/BootstrapTable/GetTestData',
                method: 'get',
                toolbar: '#toobar',//工具列
                striped: true,//隔行换色
                cache: false,//禁用缓存
                pagination: true,//启动分页
                sidePagination: 'client',//分页方式
                pageNumber: 1,//初始化table时显示的页码
                queryParams: myTableInit.queryParams,
                uniqueId: "no",
                pageSize: 9,//每页条目
                showFooter: false,//是否显示列脚
                showPaginationSwitch: true,//是否显示 数据条数选择框
                sortable: false,//排序
                search: true,//启用搜索
                showColumns: true,//是否显示 内容列下拉框
                showRefresh: true,//显示刷新按钮
                idField: 'SystemCode',//key值栏位
                clickToSelect: true,//点击选中checkbox
                singleSelect: true,//启用单行选中
                columns: [{
                    checkbox: true
                },


                    {
                        field: 'id',
                        title: '学号',
                        // titleTooltip: 'young for you'
                    },
                    {
                        field: 'SystemName',
                        title: '姓名'
                    },

                    {
                        field: 'Age',
                        title: '年龄'
                    },
                    {
                        field: 'Sex',
                        title: '性别'
                    },
                    {
                        field: 'Nni',
                        title: '学校'
                    },
                    {
                        field: 'Major',
                        title: '专业'
                    },

                    {
                        field: 'E-mail',
                        title: '邮箱'
                    },
                    {
                        field: 'E-phone',
                        title: '联系电话'
                    },

                    {
                        field: 'num',
                        title: '投递份数'
                    },
                    {
                        field: 'del',
                        title: "操作",
                        align: 'center',
                        valign: 'middle',
                        width: 160, // 定义列的宽度，单位为像素px

                        formatter: function (value, row, index) {   //传入数据

                            // return '<a   class="btn btn-default" id="rowDel" href="/StudentDelServlet(\'' + row.id + '\')">删除</a >';
                            return '<a   class="btn btn-default" id="rowDel" onclick="cli(\'' + row.id + '\')">删除</a >';
                            // return '<a   href="/StudentMana_DelServlet?get='+row.id+'" onclick="cli()" class="btn btn-default" id="rowDel"  >删除</a >';
                            // return '<a    onclick="cli()" class="btn btn-default" id="rowDel"  >删除</a >';
                        }


                    }
                ],
                onClickCell: function (field, value, row, $element) {
                    //alert(row.SystemDesc);
                }
            });
        };

        return myTableInit;
    };
</script>


<script type="text/javascript">
    function cli(id){
        //confirm方法弹出一个对话框,可以选择确定与取消操作
        //同时该方法有返回值,true和false,两个布尔值
        var flag = confirm("确定删除吗?");
        if(flag){
            // alert("你点击了确定");
            // alert(id);
            // window.location.href="/StudentDelServlet?get='+id+'";
            window.location.href="/StudentMana_DelServlet?get="+id;
        }else{

            return false;
        }
    }
</script>
</body>

<script>

    $(document).ready(function(){
        var path=window.location.pathname;  //先得到地址栏内容
        var regExp=/[\/\.\?]+/;
        str=path.split(regExp);
        var node=str.slice(-2,-1);   //截取地址栏信息得到文件名
        $('#'+node+' a').addClass('at');  //提前写好对应的id,菜单加亮
        $('#'+node).parent().parent().parent().addClass('in'); //id父级的父级的父级添加展开class
    })
</script>
</html>




