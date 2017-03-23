<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%--
  Created by IntelliJ IDEA.
  User: 杨波
  Date: 2017/3/21
  Time: 21:46
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
        <tr class="active">
            <%--<td><strong>单号id</strong></td>--%>
            <td><strong>姓名</strong></td>
            <td><strong>使用时间</strong></td>
            <td><strong>使用流量(M)</strong></td>
        </tr>
        <c:forEach var="myGprs" items="${list}">
            <tr>
                <%--<td>${myGprs.gprsId}</td>--%>
                <td>${myGprs.name}</td>
                <td><fmt:formatDate value="${myGprs.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>${myGprs.usegprs}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</tbody>

</html>