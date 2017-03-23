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
                    <td><strong>话费余额(元)</strong></td>
                    <td>${myBalance.money}</td>
                </tr>
                <tr class="active">
                    <td><strong>流量余额(M)</strong></td>
                    <td>${myBalance.gprs}</td>
                </tr>
            <%--</c:if>--%>
        </table>
    </div>
</tbody>
</html>
