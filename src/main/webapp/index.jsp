<%--
  Created by IntelliJ IDEA.
  User: yaque
  Date: 2018/11/28
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>水果店</title>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${ctx}/css/layui.css"  media="all">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<center>
    <h1>
        <br />
        <br />
        <br />
        Hi!
        <br />
        <br />
        <br />
        Welcome!
        <br />
        <br />
        <br />
        Fruit Shop
        <br />
        <br />
        <br />
    </h1>
    <br />
    <br />
    <br />
    <br />
    <a class="layui-btn layui-btn-normal layui-btn-radius" href="<%=basePath%>/shopping/selectPackingBox">开始选取水果</a>
    <br />
    <br />
    <br />
    <br />
    <br />
</center>
<script src="${ctx}/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
</body>
</html>
