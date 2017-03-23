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
            <td><strong>发送时间</strong></td>
            <td><strong>发送数量(条)</strong></td>
            <td><strong>费用(元)</strong></td>
        </tr>
        <c:forEach var="myMessage" items="${list}">
            <tr>
                <%--<td>${myMessage.messId}</td>--%>
                <td>${myMessage.name}</td>
                <td><fmt:formatDate value="${myMessage.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>${myMessage.quantities}</td>
                <td>${myMessage.cost}</td>
            </tr>
        </c:forEach>
    </table>

</div>
</tbody>

</html>