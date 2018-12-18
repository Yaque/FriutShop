<%--
  Created by IntelliJ IDEA.
  User: yaque
  Date: 2018/12/12
  Time: 19:34
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
    <tr>
        <td>分类</td>
        <td>包装盒</td>
    </tr>
    <c:forEach var="packingBox" items="${requestScope.get('packingBoxList')}" varStatus="status">
        <tr>
            <td>
                ${packingBox.toString()}
            </td>
            <td>
                <a href="<%=basePath%>admin/deleteGood/?id=${packingBox.id}&number=${0}">删除</a>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td>分类</td>
        <td>水果</td>
    </tr>
    <c:forEach var="fruit" items="${requestScope.get('fruitList')}" varStatus="status">
        <tr>
            <td>
                    ${fruit.toString()}
            </td>
            <td>
                <a href="<%=basePath%>admin/deleteGood/?id=${fruit.id}&number=${1}">删除</a>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td>分类</td>
        <td>酸奶</td>
    </tr>
    <c:forEach var="yoghurt" items="${requestScope.get('yoghurtList')}" varStatus="status">
        <tr>
            <td>
                    ${yoghurt.toString()}
            </td>
            <td>
                <a href="<%=basePath%>admin/deleteGood/?id=${yoghurt.id}&number=${2}">删除</a>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td>分类</td>
        <td>包装袋</td>
    </tr>
    <c:forEach var="packingBag" items="${requestScope.get('packingBagList')}" varStatus="status">
        <tr>
            <td>
                    ${packingBag.toString()}
            </td>
            <td>
                <a href="<%=basePath%>admin/deleteGood/?id=${packingBag.id}&number=${3}">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<center><a class="layui-btn layui-btn-normal layui-btn-radius" href="<%=basePath%>admin/goodFruit">添加水果</a></center>
<br />
<center><a class="layui-btn layui-btn-normal layui-btn-radius" href="<%=basePath%>admin/goodYoghurt">添加酸奶</a></center>
<br />
<center><a class="layui-btn layui-btn-normal layui-btn-radius" href="<%=basePath%>admin/goodPackingBox">添加盒子</a></center>
<br />
<center><a class="layui-btn layui-btn-normal layui-btn-radius" href="<%=basePath%>admin/goodPackingBag">添加袋子</a></center>
<br />
<script src="${ctx}/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
</body>
</html>
