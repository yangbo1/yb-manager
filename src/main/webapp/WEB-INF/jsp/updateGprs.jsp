<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%--
  Created by IntelliJ IDEA.
  User: 杨波
  Date: 2017/3/22
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="header.jsp"%>
    <%@include file="admin.jsp"%>
</head>

<body>
<div class="container-wrap">
    <form class="form-horizontal" role="form" action="${yb}/saveGprs" method="post">
        <input id="id" name="cuId" value="${gprsdetails.cuId}" hidden="hidden">
        <div class="form-group">
            <label class="col-sm-2 control-label">单号id</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" readonly="readonly" id="gprsId" name="gprsId" value="${gprsdetails.gprsId}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">客户姓名</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="name" readonly="readonly" name="name" value="${gprsdetails.name}">
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">使用时间</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="createtime"  name="createtime" value='<fmt:formatDate value="${gprsdetails.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/>'>
            </div>

        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">使用流量(M)</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="usegprs"  name="usegprs" value="${gprsdetails.usegprs}">
            </div>
        </div>

        <div class="form-group">

            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" class="btn btn-default" id="button"
                       value="提交"/>
            </div>

        </div>
    </form>
</div>
</body>
</html>
