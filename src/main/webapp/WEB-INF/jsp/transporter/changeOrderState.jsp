<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>舞鹤物流管理后台</title>
    <link rel="shortcut icon" href="/images/logo.png">
    <link rel="stylesheet" href="/css/bootstrap.css"/>
    <link rel="stylesheet" href="/css/admin.css"/>
    <script type="text/javascript" src="/js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/sdmenu.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#addLogInfo").submit(function () {
                var orderid = $("#orderid").val();
                var state = $("#state").val();
                var vehicle = $("#vehicle").val();
                var info = $("#info").val();
                var reg = /^[0-9]{12}$/;
                if (!reg.test(orderid)) {
                    alert("订单号格式错误！");
                    return false;
                }
                if (state === "0") {
                    alert("请选择物流状态！");
                    return false;
                }
                if (vehicle === "0") {
                    alert("请选择车辆！");
                    return false;
                }
                if (info === "") {
                    alert("物流信息不能为空！");
                    return false;
                }
                alert("物流信息变更成功！");
                return true;
            })
        })

    </script>
</head>

<body>
<div class="header">
    <div class="logo"><img src="/images/admintitle.png" align="middle"/></div>
    <div class="header-right">
        <i class="icon-user icon-white"></i>
        <a href="#" state="button" data-toggle="modal">运输员${sessionScope.backstage}</a>
        <i class="icon-off icon-white"></i>
        <a id="modal-973558" href="#modal-container-973558" state="button" data-toggle="modal">退出</a>
        <div id="modal-container-973558" class="modal hide fade" state="dialog" aria-labelledby="myModalLabel"
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
                <a href="/changelogistics">更改物流信息</a>
            </div>
            <div class="collapsed">
                <span>车辆管理</span>
                <a href="/myvehicle">我的车辆</a>
            </div>
        </div>
    </div>

    <div class="right" id="mainFrame">
        <div class="right_cont">
            <ul class="breadcrumb">当前位置：
                <a href="#">物流管理</a>
                <span class="divider">/</span>
                <a href="#">更改物流信息</a>
            </ul>
            <div class="title_right"><strong>更改物流信息</strong></div>

            <form action="/addLogisticsInfo" method="post" id="addLogInfo" class="form-horizontal">
                <div class="control-group">
                    <label class="control-label">订单号</label>
                    <div class="controls">
                        <input type="text" placeholder="请输入订单号" name="orderid" id="orderid">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">选择车辆</label>
                    <div class="controls">
                        <select name="vehicle" id="vehicle">
                            <option value="0">请选择车辆</option>
                            <c:forEach items="${myvehicle}" var="myvehicle">
                                <option value="${myvehicle.vehicleid}">${myvehicle.vehicleid}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">订单状态</label>
                    <div class="controls">
                        <select name="state" id="state">
                            <option value="0">选择物流状态</option>
                            <option value="1">已揽件</option>
                            <option value="2">已发货</option>
                            <option value="3">运输中</option>
                            <option value="4">待收货</option>
                            <option value="5">已签收</option>
                        </select>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">物流信息</label>
                    <div class="controls">
                        <textarea name="info" id="info"></textarea>
                    </div>
                </div>
                <div class="operation">
                    <input type="submit" value="确认变更" class="btn btn-default"/>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- 底部 -->
<div id="footer">Copyright&copy;&nbsp;2017-2018&nbsp; 舞鹤物流有限责任公司.&nbsp;&nbsp;All&nbsp;&nbsp;rights&nbsp;&nbsp;reserved.
    &nbsp;&nbsp;新ICP备10005645
</div>
</body>
</html>
