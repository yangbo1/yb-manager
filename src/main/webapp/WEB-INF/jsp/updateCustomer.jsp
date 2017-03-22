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
<%--<script type="text/javascript">
    $().ready(function () {
        $('.form_date').datetimepicker({
            format: "yyyy-mm-dd",
            language: 'zh-CN',
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            minView: 2
        }).on('changeDate', function () {
            $(this).blur();
        });
    });

</script>--%>
<body>
<div class="container-wrap">
    <form class="form-horizontal" role="form" action="${yb}/saveCustomer" method="post">
        <input id="id" name="customerId" value="${customer.custId}" hidden="hidden">
        <div class="form-group">
            <label class="col-sm-2 control-label">客户id</label>

            <div class="col-sm-5">
                <input type="text" class="form-control"  id="custId" name="custId" value="${customer.custId}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">客户姓名</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="username"  name="username" value="${customer.username}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">密码</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="password"  name="password" value="${customer.password}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">电话号码</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="tel" name="tel" value="${customer.tel}">
            </div>
        </div>
       <%-- <div class="form-group">
            <label class="col-sm-2 control-label">性别</label>

            <div class="col-sm-5">
                <c:choose>
                    <c:when test="${customer.sex==\"男\"}">
                        男&nbsp;<input type="radio" value="男" data-checkedClass="checked"
                        checked="checked" name="sex" id="sex">
                        &nbsp;&nbsp;&nbsp;女&nbsp;<input type="radio" value="女"
                        data-checkedClass="checked" name="sex" id="sex">
                    </c:when>
                    <c:when test="${customer.sex==\"女\"}">
                        男&nbsp;<input type="radio" value="男" data-checkedClass="checked"
                        name="sex" id="sex">
                        &nbsp;&nbsp;&nbsp;女&nbsp;<input type="radio" value="女"
                        data-checkedClass="checked" checked="checked" name="sex"
                        id="sex">
                    </c:when>
                    <c:otherwise>
                        男&nbsp;<input type="radio" value="男" data-checkedClass="checked"
                        name="sex" id="sex" checked="checked">
                        &nbsp;&nbsp;&nbsp;女&nbsp;<input type="radio" value="女"
                        data-checkedClass="checked"  name="sex"
                        id="sex">
                    </c:otherwise>
                </c:choose>
            </div>
        </div>--%>
        <%--<div class="form-group">
            <label class="col-sm-2 control-label">日期</label>

            <div class="input-group date form_date col-sm-5"
                 data-date-format="dd MM yyyy"
                 data-link-field="dtp_input3" data-link-format="yyyy-mm-dd">
                <input class="form-control" size="16" type="text"
                       id="birthday" name="birthday"
                       value='<fmt:formatDate value="${customer.birthday}" pattern="yyyy-MM-dd"/>'
                       readonly> <span class="input-group-addon"><span
                    class="glyphicon glyphicon-calendar"></span></span>
            </div>
        </div>--%>
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
