<%@ page import="com.yb.pojo.Customer" %><%--
  Created by IntelliJ IDEA.
  User: 杨波
  Date: 2017/3/21
  Time: 16:15
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
<%Customer cu = (Customer) session.getAttribute("customer");
    Integer id = cu.getCustId();
%>
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
            <%--href="javascript:location='${yb}/myInfo?id=${customer.custId}'"--%>
            <li><a href="javascript:location='${yb}/myInfo?id=<%=id%>'">我的信息</a></li>
            <li><a href="javascript:location='${yb}/myCall?id=<%=id%>'">通话详单</a></li>
            <li><a href="javascript:location='${yb}/myGprs?id=<%=id%>'">流量详单</a></li>
            <li><a href="javascript:location='${yb}/myMessage?id=<%=id%>'">信息详单</a></li>
            <li><a href="javascript:location='${yb}/myBalance?id=<%=id%>'">余额查询</a></li>
            <li><a href="javascript:location='${yb}/addBalance?id=<%=id%>'">充值</a></li>
            <li><a href="">我的套餐</a></li>
        </ul>
    </div>
    <!--/.navbar-collapse -->
</div>
</body>
</html>
