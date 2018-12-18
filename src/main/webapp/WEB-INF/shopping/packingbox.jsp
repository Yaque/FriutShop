<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yaque
  Date: 2018/12/12
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
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


    <div class="layui-fluid">
        <form action="<%=basePath%>shopping/submitPackingBox" method="post">
            <fieldset class="layui-elem-field layui-field-title">
                <legend><h1>请选择包装盒</h1></legend>
            </fieldset>
            <div class="layui-row">
                <hr class="layui-bg-blue">
                <c:forEach var="packingBox" items="${requestScope.get('packingBoxList')}" varStatus="status">
                    <div class="layui-col-sm3">
                        <div style="margin: 10px; padding-bottom: 20px; border-radius: 20px; border: black; border-width: 2px;">
                            <h2>&emsp;${packingBox.classification}</h2>
                            <div>
                            <h3>&emsp;&emsp;&emsp;&emsp;形状：&emsp;&emsp;${packingBox.name}</h3>
                            <h3>&emsp;&emsp;&emsp;&emsp;规格：&emsp;&emsp;${packingBox.capacity}</h3>
                            <h3>&emsp;&emsp;&emsp;&emsp;价格：&emsp;&emsp;${packingBox.price}元</h3>
                            <c:if test="${packingBox.recycle == 1}"><h3>&emsp;&emsp;&emsp;&emsp;回收：&emsp;&emsp;可回收</h3></c:if>
                            <c:if test="${packingBox.recycle == 0}"><h3>&emsp;&emsp;&emsp;&emsp;回收：&emsp;&emsp;不可回收</h3></c:if>
                            <h3>&emsp;&emsp;&emsp;&emsp;数量：&emsp;&emsp;
                                <input class="layui-text" name="${packingBox.id}" value="0" style="width: 30px;" />
                            </h3>
                            </div>
                        </div>
                    </div>
                    <hr class="layui-bg-blue">
                </c:forEach>
            </div>
            <br />
            <br />
            <center><input class="layui-btn layui-btn-normal layui-btn-radius" type="submit" value="选水果"></center>
            <br />
            <br />
            <br />
            <br />
        </form>
    </div>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px;">
        <legend>注意：</legend>
    </fieldset>

    <div style="padding: 20px; background-color: #F2F2F2;">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md6">
                <div class="layui-card">
                    <div class="layui-card-header">提示1</div>
                    <div class="layui-card-body">
                        物品份数输入框不能为空<br>
                    </div>
                </div>
            </div>
            <div class="layui-col-md6">
                <div class="layui-card">
                    <div class="layui-card-header">提示2</div>
                    <div class="layui-card-body">
                        请合理选择<br>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="${ctx}/layui.js" charset="utf-8"></script>
    <!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

</body>
</html>
