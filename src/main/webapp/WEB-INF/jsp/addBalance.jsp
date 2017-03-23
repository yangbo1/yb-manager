<%--
  Created by IntelliJ IDEA.
  User: 杨波
  Date: 2017/3/23
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="header.jsp"%>
    <%@include file="user.jsp"%>
</head>

<tbody>
    <div class="container-wrap">
        <form class="form-horizontal" role="form" action="${yb}/addMoney" method="post">
        <table class="table table-hover">
            <%--<c:if test="${myBalance}!=null" var="myBalance">--%>
                <%--<tr class="active">--%>
                    <%--<td><strong>id号</strong></td>--%>
                    <%--<td>${myBalance.baId}</td>--%>
                <%--</tr>--%>
                <tr class="active">
                    <td><strong>姓名</strong></td>
                    <td>${myBalance.name}</td>
                </tr>
                <tr class="active">
                    <td><strong>当前话费(元)</strong></td>
                    <td>${myBalance.money}</td>
                </tr>
            <%--</c:if>--%>
        </table>

            <input id="baId" name="baId" value="${myBalance.baId}" hidden="hidden">
            <div class="form-group">
                <label class="col-sm-2 control-label">输入充值金额(元)</label>

                <div class="col-sm-5">
                    <input type="text" class="form-control" id="addmoney"  name="addmoney" >
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
</tbody>
</html>
