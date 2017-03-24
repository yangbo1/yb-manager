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
    <%@include file="user.jsp"%>
</head>

<tbody>
    <div class="container-wrap">
        <table class="table table-hover">
            <%--<c:if test="${mypostage}!=null" var="mypostage">--%>
                <tr class="active">
                    <td><strong>编号</strong></td>
                    <td>${mypostage.mpid}</td>
                </tr>
                <tr class="active">
                    <td><strong>姓名</strong></td>
                    <td>${mypostage.cName}</td>
                </tr>
                <tr class="active">
                    <td><strong>套餐类型</strong></td>
                    <td>${mypostage.type}</td>
                </tr>
                <tr class="active">
                    <td><strong>通话资费(元/分)</strong></td>
                    <td>${mypostage.callprice}</td>
                </tr>
                <tr class="active">
                    <td><strong>信息资费(元/条)</strong></td>
                    <td>${mypostage.messageprice}</td>
                </tr>
                <tr class="active">
                    <td><strong>月租</strong></td>
                    <td>${mypostage.rent}</td>
                </tr>
            <%--</c:if>--%>
        </table>
    </div>
</tbody>
</html>
