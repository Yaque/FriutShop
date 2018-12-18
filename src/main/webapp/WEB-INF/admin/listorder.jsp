<%--
  Created by IntelliJ IDEA.
  User: yaque
  Date: 2018/12/13
  Time: 23:42
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<title>订单列表</title>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="${ctx}/css/layui.css"  media="all">
<!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
<script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
<script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<br />
<br />
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>订单列表</legend>
</fieldset>

<table class="layui-table" lay-size="lg">
    <colgroup>
        <col width="150">
        <col>
    </colgroup>
    <thead>
    <tr>
        <td>手机号</td>
        <td>详情</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="shoppingTrolley" items="${requestScope.get('shoppingTrolleyList')}" varStatus="status">
        <tr>
            <td>${shoppingTrolley.phoneNumber}</td>
            <td>
                <a href="<%=basePath%>admin/getOrderDetial/${shoppingTrolley.id}">详细</a> |
                <a href="<%=basePath%>admin/delete/${shoppingTrolley.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<center><a class="layui-btn layui-btn-normal layui-btn-radius" href="<%=basePath%>admin/getAllGood">管理商品</a></center>
<center><a class="layui-btn layui-btn-normal layui-btn-radius" href="<%=basePath%>admin/logout">退出登录</a></center>
<script src="${ctx}/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
</body>
</html>

