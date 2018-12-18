<%@ page import="cc.wdiannao.demo.friutshop.entity.ShoppingTrolley" %>

<%--
  Created by IntelliJ IDEA.
  User: yaque
  Date: 2018/12/13
  Time: 0:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<title>FruitShop</title>
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

<%
    ShoppingTrolley shoppingTrolley = (ShoppingTrolley) session.getAttribute("shoppingTrolley");
    String packingBoxs = shoppingTrolley.getPackingBoxs();
    String[] stringPackingBoxs = packingBoxs.split(":");
    String fruits = shoppingTrolley.getFruits();
    String[] stringFruits = fruits.split(":");
    String yoghurts = shoppingTrolley.getYoghurts();
    String[] stringsYoghurts = yoghurts.split(":");
    String packingBags = shoppingTrolley.getPackingBags();
    String[] stringPackingBags = packingBags.split(":");
%>
<br />
<center><h1>您好，您的订单信息如下。</h1></center>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>详情</legend>
</fieldset>

<table class="layui-table" lay-size="lg">
    <colgroup>
        <col width="150">
        <col>
    </colgroup>
    <thead>
    <tr>
        <td>总价：</td>
        <td><%=shoppingTrolley.getSumPrice()%>元</td>
    </tr>
    <tr>
        <th>联系手机号</th>
        <th><%=shoppingTrolley.getPhoneNumber()%></th>
    </tr>
    </thead>
    <tbody>
    <%
        for (String packingBox: stringPackingBoxs) {
    %>
    <tr>
        <td>包装盒</td>
        <td><%=packingBox%></td>
    </tr>
    <%
        }
    %>
    <%
        for (String fruit: stringFruits) {
    %>
    <tr>
        <td>水果</td>
        <td><%=fruit%></td>
    </tr>
    <%
        }
    %>
    <%
        for (String yoghurt: stringsYoghurts) {
    %>
    <tr>
        <td>酸奶</td>
        <td><%=yoghurt%></td>
    </tr>
    <%
        }
    %>
    <%
        for (String packingBag: stringPackingBags) {
    %>
    <tr>
        <td>包装袋</td>
        <td><%=packingBag%></td>
    </tr>
    <%
        }
    %>
    </tbody>
    <tr>
        <th>您的其他要求</th>
        <th><%=shoppingTrolley.getMessage()%></th>
    </tr>
</table>
<br />
<br />
<center><p>您好，您的订单已提交。<br />如果手机号码正确，<br />稍后我们的服务人员会与您联系。</p></center>
<br />
<center>
    <h1 style="align-content: center">由于您没有留下联系方式，本次订单无效。</h1>
    <a class="layui-btn layui-btn-normal layui-btn-radius" href="<%=basePath%>shopping/selectPackingBox">再来一次</a>
</center>
<br />
<br />
<script src="${ctx}/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
</body>
</html>
