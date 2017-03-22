<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="yb" value="${pageContext.request.contextPath}" />
<%@include file="header.jsp"%>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="${yb}/resources/css/index.css">
</head>
<%--<script type="text/javascript">
    function fun() {
        var type = document.getElementsByName("logtype").value;
        if (type=="admin" || type=="customer") {
            document.getElementById("form").action = "/login"
        } else {
             alert("请选择登陆类型");
        }
    }
</script>--%>
<body>
<form class="form-horizontal" role="form"  action="/login" method="post">
    <div class="form-group">
        <label for="username" class="col-sm-2 control-label">用户名</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="username" name="username" placeholder="请输入名字">
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-sm-2 control-label">密码</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <div class="checkbox">
                <label>
                    <input type="radio" name="logtype" id= "admin" value="admin" checked>管理员
                </label>
                <label>
                    <input type="radio" name="logtype" id="customer" value="customer">普通用户
                </label>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" <%--id="submit" onclick="fun()"--%> class="btn btn-default">登录</button>
        </div>
    </div>
</form>
</body>
</html>
