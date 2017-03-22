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
        <%@include file="admin.jsp"%>
</head>
<tbody>
<div class="container-wrap">
    <table class="table table-hover">
        <tr class="active">
            <td><strong>单号id</strong></td>
            <td><strong>客户姓名</strong></td>
            <td><strong>使用时间</strong></td>
            <td><strong>使用流量(M)</strong></td>
            <td><strong>操作</strong></td>
        </tr>
        <c:forEach var="gprsdetails" items="${list}">
            <tr>
                <td>${gprsdetails.gprsId}</td>
                <td>${gprsdetails.name}</td>
                <td><fmt:formatDate value="${gprsdetails.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>${gprsdetails.usegprs}</td>
                <td><a
                        href="${yb}/update-view-gprs?id=${gprsdetails.gprsId}"><span
                        class="glyphicon glyphicon-pencil"></span></a>&nbsp; &nbsp;<a
                        href="javascript:if(confirm('确实要删除该条记录吗？'))location='${yb}/deletegprsdetails?id=${gprsdetails.gprsId}'"
                        style="cursor: pointer"><span
                        class="glyphicon glyphicon-remove"></span></a></td>
            </tr>
        </c:forEach>
    </table>

</div>
</tbody>

</html>