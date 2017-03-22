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
    <form class="form-horizontal" role="form" action="${yb}/saveMessage" method="post">
        <input id="id" name="cusId" value="${messagedetails.cusId}" hidden="hidden">
        <div class="form-group">
            <label class="col-sm-2 control-label">单号id</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" readonly="readonly" id="messId" name="messId" value="${messagedetails.messId}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">客户姓名</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="name" readonly="readonly" name="name" value="${messagedetails.name}">
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">发送时间</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="createtime"  name="createtime" value='<fmt:formatDate value="${messagedetails.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/>'>
            </div>

        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">发送数量(条)</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="quantities"  name="quantities" value="${messagedetails.quantities}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">费用(元)</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="cost"  name="cost" value="${messagedetails.cost}">
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
