<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>舞鹤物流管理后台</title>
    <link rel="shortcut icon" href="/images/logo.ico">
    <link rel="stylesheet" href="/css/bootstrap.css"/>
    <link rel="stylesheet" href="/css/admin.css"/>
    <script type="text/javascript" src="/js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/sdmenu.js"></script>
</head>

<body>
<div class="header">
    <div class="logo"><img src="/images/admintitle.png" align="middle"/></div>
    <div class="header-right">
        <i class="icon-user icon-white"></i>
        <a href="#" role="button" data-toggle="modal">运输员${sessionScope.backstage}</a>
        <i class="icon-off icon-white"></i>
        <a id="modal-973558" href="#modal-container-973558" role="button" data-toggle="modal">退出</a>
        <div id="modal-container-973558" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true" style="width:300px; margin-left:-150px; top:30%">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel">
                    注销系统
                </h3>
            </div>
            <div class="modal-body">
                <p>
                    您确定要注销退出系统吗？
                </p>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
                <a class="btn btn-primary" style="line-height:20px;" href="/clearLogin">确定退出</a>
            </div>
        </div>
    </div>
</div>
<!-- 顶部 -->
<div id="middle">
    <div class="left">
        <script type="text/javascript">
            var myMenu;
            window.onload = function () {
                myMenu = new SDMenu("my_menu");
                myMenu.init();
            };
        </script>

        <div id="my_menu" class="sdmenu">
            <div class="collapsed">
                <span>物流管理</span>
                <a href="/transporter/change.jsp">更改物流信息</a>
            </div>
            <div class="collapsed">
                <span>车辆管理</span>
                <a href="/transporter/load.jsp">订单装车</a>
                <a href="/myvehicle">我的车辆</a>
            </div>
        </div>
    </div>

    <div class="right" id="mainFrame">
        <div class="right_cont">
            <ul class="breadcrumb">当前位置：
                <a href="#">首页</a> <span class="divider">/</span>
            </ul>
            <div class="title_right"><strong>欢迎来到管理后台</strong></div>

            <div>
                选择车辆：
                <select>
                <option>选择车辆</option>
                <option>京32FG12</option>
                <option>新75F98</option>
            </select>
                选择订单号：
                <input placeholder="输入订单号"/>
                <input type="button" class="btn btn-default" value="装车"/>
            </div>


            <div>
                <input type="text" placeholder="请输入订单号"/>
                <input type="text" placeholder="请输入车辆信息"/>
                <input type="text" placeholder="请输入物流信息"/>
                <select>
                    <option>选择物流状态</option>
                    <option value="已揽件">已揽件</option>
                    <option value="已发货">已发货</option>
                    <option value="运输中">运输中</option>
                    <option value="待收货">待收货</option>
                    <option value="已签收">已签收</option>
                </select>
                <input type="button" value="确认变更" class="btn btn-default"/>
            </div>
        </div>
    </div>

</div>

<!-- 底部 -->
<div id="footer">Copyright&copy;&nbsp;2017-2018&nbsp; 舞鹤物流有限责任公司.&nbsp;&nbsp;All&nbsp;&nbsp;rights&nbsp;&nbsp;reserved.
    &nbsp;&nbsp;新ICP备10005645
</div>
</body>
</html>
