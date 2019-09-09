<%--
  Created by IntelliJ IDEA.
  User: Administream
  Date: 2019/5/14
  Time: 17:32
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
    <title>招聘信息管理页面</title>
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
                <li class="dropdown"><a href="#">退出</a></li>
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
                <c:forEach items="${requestScope.list}" var="p" >
                    <tr>
                        <td></td>
                        <td>${p.position_id}</td>
                        <td>${p.position_name}</td>
                        <td>${p.position_address}</td>
                        <td>${p.position_time}</td>
                        <td>${p.position_num}</td>
                        <td>${p.position_edu}</td>
                        <td>${p.position_experience}</td>
                        <td>${p.position_salary}</td>
                        <td>${p.position_desc}</td>
                        <td>${p.position_duty}</td>
                        <td>${p.position_start_time}</td>
                        <td>${p.position_end_time}</td>
                        <td>${p.position_edit_time}</td>
                        <%--<td>${p.position_publish_state}</td>--%>
                        <td></td>

                    </tr>
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
                pageSize: 10,//每页条目
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
                        title: '序号'
                    },
                    {
                        field: 'SystemCode',
                        title: '职位名'
                    },
                    {
                        field: 'Systemadress',
                        title: '工作地点'
                    },
                    {
                        field: 'Systemtime',
                        title: '工作时间'
                    },
                    {
                        field: 'position_num',
                        title: '招聘人数'
                    },

                    {
                        field: 'Systemedu',
                        title: '学历要求'
                    },

                    {
                        field: 'Systemexperience',
                        title: '经验要求'
                    },
                    {
                        field: 'Systemsalary',
                        title: '薪资说明'
                    },
                    {
                        field: 'desc',
                        title: '职位要求'
                    },
                    {
                        field: 'duty',
                        title: '岗位职责'
                    },
                    {
                        field: 'start_time',
                        title: '发布日期'
                    },

                    {
                        field: 'position_end_time',
                        title: '结束日期'
                    },
                    {
                        field: 'position_edit_time',
                        title: '编辑日期'
                    },

                    // {
                    //     field: 'publish_state',
                    //     title: '发布状态'
                    // },
                    {
                        field: 'operate',
                        title: '操作',
                        // events:delEvents,
                        formatter: operateFormatter //自定义方法，添加操作按钮

                    }
                ],
                onClickCell: function (field, value, row, $element) {
                    //alert(row.SystemDesc);
                }
            });
        };
        function operateFormatter(value, row, index) {
            return [
                '<a  class="btn btn-default" id="rowDel" onclick="cli(\'' + row.id + '\')">删除</a>'
            ].join('');

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
            window.location.href="/PositionMana_DelServlet?get="+id;
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