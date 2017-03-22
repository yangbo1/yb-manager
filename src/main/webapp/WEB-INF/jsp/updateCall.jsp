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
            format: "yyyy-MM-dd HH:ii:ss",
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
    <form class="form-horizontal" role="form" action="${yb}/saveCall" method="post">
        <input id="id" name="custId" value="${calldetails.custId}" hidden="hidden">
        <div class="form-group">
            <label class="col-sm-2 control-label">单号id</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" readonly="readonly" id="callId" name="callId" value="${calldetails.callId}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">客户姓名</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="name" readonly="readonly" name="name" value="${calldetails.name}">
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">通话时间</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="createtime"  name="createtime" value='<fmt:formatDate value="${calldetails.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/>'>
            </div>

           <%-- <div class="input-group date form_date col-sm-5"
                 data-date-format="yyyy-MM-dd HH:ii:ss"
                 data-link-field="dtp_input3" data-link-format="yyyy-MM-dd HH:mm:ss">
                <input class="form-control" size="16" type="text"
                       id="createtime" name="createtime"
                       value='<fmt:formatDate value="${calldetails.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/>'
                       readonly> <span class="input-group-addon"><span
                    class="glyphicon glyphicon-calendar"></span></span>
            </div>--%>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">通话时长</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="time"  name="time" value="${calldetails.time}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">费用</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="cost"  name="cost" value="${calldetails.cost}">
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
