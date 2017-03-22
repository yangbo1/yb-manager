<%--
  Created by IntelliJ IDEA.
  User: 杨波
  Date: 2017/3/22
  Time: 16:00
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
    <form class="form-horizontal" role="form" action="${yb}/insertCustomer" method="post">
        <%--<input id="id" name="customerId" value="${customer.custId}" hidden="hidden">--%>
        <%--<div class="form-group">
            <label class="col-sm-2 control-label">客户id</label>

            <div class="col-sm-5">
                <input type="text" class="form-control"  id="custId" name="custId">
            </div>
        </div>--%>
        <div class="form-group">
            <label class="col-sm-2 control-label">客户姓名</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="username"  name="username" >
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">密码</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="password"  name="password" >
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">电话号码</label>

            <div class="col-sm-5">
                <input type="text" class="form-control" id="tel" name="tel" >
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
