<%--
  Created by IntelliJ IDEA.
  User: yaque
  Date: 2018/12/15
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<title>添加水果</title>
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
<br />
<center><h1>您好</h1></center>
<br />
<br />
<div class="layui-fluid">
    <form class="layui-form layui-form-pane" action="<%=basePath%>admin/addGoodFruit" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">类别：</label>
            <div class="layui-input-block">
                <input type="text" name="classification" lay-verify="required" autocomplete="off" placeholder="请输入类别" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">名字：</label>
            <div class="layui-input-block">
                <input type="text" name="name" lay-verify="required" autocomplete="off" placeholder="请输入名字" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">价格：</label>
            <div class="layui-input-block">
                <input type="text" name="price" lay-verify="required" autocomplete="off" placeholder="请输入价格" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">重量：</label>
            <div class="layui-input-block">
                <input type="text" name="weight" lay-verify="required" autocomplete="off" placeholder="请输入重量" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">形状：</label>
            <div class="layui-input-block">
                <input type="text" name="shape" lay-verify="required" autocomplete="off" placeholder="请输入形状" class="layui-input">
            </div>
        </div>
        <center><input class="layui-btn layui-btn-normal layui-btn-radius" type="submit" value="添加"></center>
    </form>
</div>
<script src="${ctx}/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
</body>
</html>
