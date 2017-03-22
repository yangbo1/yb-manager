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
    <form class="form-horizontal" role="form" action="${yb}/savePost" method="post">
        <input id="id" name="postId" value="${postage.postId}" hidden="hidden">
        <div class="form-group">
            <label class="col-sm-2 control-label">资费id</label>

            <div class="col-sm-5">
                <input type="text" class="form-control"  id="postId" readonly="readonly" name="postId" value="${postage.postId}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">套餐类型</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="type"  name="type" value="${postage.type}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">电话资费(元/分)</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="callprice"  name="callprice" value="${postage.callprice}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">信息资费(元/条)</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="messageprice" name="messageprice" value="${postage.messageprice}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">月租(元)</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="rent" name="rent" value="${postage.rent}">
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
