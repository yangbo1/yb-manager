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
            <%--<c:if test="${myInfo}!=null" var="myInfo">--%>
                <tr class="active">
                    <td><strong>编号</strong></td>
                    <td>${myInfo.custId}</td>
                </tr>
                <tr class="active">
                    <td><strong>姓名</strong></td>
                    <td>${myInfo.username}</td>
                </tr>
                <tr class="active">
                    <td><strong>密码</strong></td>
                    <td>${myInfo.password}</td>
                </tr>
                <tr class="active">
                    <td><strong>电话</strong></td>
                    <td>${myInfo.tel}</td>
                </tr>
            <%--</c:if>--%>
        </table>
    </div>
</tbody>
</html>
