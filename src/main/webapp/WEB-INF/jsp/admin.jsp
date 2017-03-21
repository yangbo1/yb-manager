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
            <li><a href="list">所有学生</a></li>
            <li><a href="add-view">添加学生</a></li>
            <li><a href="search-view">查询学生</a></li>
        </ul>
    </div>
    <!--/.navbar-collapse -->
</div>--%>
</body>
</html>
