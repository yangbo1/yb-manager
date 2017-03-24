<%--
  Created by IntelliJ IDEA.
  User: 杨波
  Date: 2017/3/21
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="yb" value="${pageContext.request.contextPath}" />
<%@include file="header.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span> <span
                class="icon-bar"></span> <span class="icon-bar"></span> <span
                class="icon-bar"></span>
        </button>
    </div>
    <div id="navbar" class="text-center navbar-collapse collapse">
        <ul class="nav navbar-nav">
            <li><a href="listCustomer">所有客户</a></li>
            <li><a href="listCall">通话详单</a></li>
            <li><a href="listGprs">流量详单</a></li>
            <li><a href="listMessage">信息详单</a></li>
            <li><a href="addCustomer">添加客户</a></li>
            <li><a href="listPostage">资费详情</a></li>
            <li>欢迎你：管理员<a href="index.jsp">退出</a></li>
        </ul>
    </div>
    <!--/.navbar-collapse -->
</div>
</body>
</html>
