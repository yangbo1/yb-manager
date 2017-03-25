<%--
  Created by IntelliJ IDEA.
  User: 杨波
  Date: 2017/3/25
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="user.jsp"%>
</head>
<body>
<form action="${yb}/messaged" method="post">
    <input id="id" name="id" value="${id}" hidden="hidden">
    <div class="form-group">
        <label class="col-sm-2 control-label">输入发送条数</label>

        <div class="col-sm-5">
            <input type="text" class="form-control" id="quanties"  name="quanties" >
        </div>
    </div>
    <div class="form-group">

        <div class="col-sm-offset-2 col-sm-10">
            <input type="submit" class="btn btn-default" id="button"
                   value="提交"/>
        </div>

    </div>
</form>
</body>
</html>
