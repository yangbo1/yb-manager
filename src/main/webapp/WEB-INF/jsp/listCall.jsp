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
            <td><strong>通话时间</strong></td>
            <td><strong>通话时长(分)</strong></td>
            <td><strong>费用(元)</strong></td>
            <td><strong>操作</strong></td>
        </tr>
        <c:forEach var="calldetails" items="${list}">
            <tr>
                <td>${calldetails.callId}</td>
                <td>${calldetails.name}</td>
                <td><fmt:formatDate value="${calldetails.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>${calldetails.time}</td>
                <td>${calldetails.cost}</td>
                <td><a
                        href="${yb}/update-view-call?id=${calldetails.callId}"><span
                        class="glyphicon glyphicon-pencil"></span></a>&nbsp; &nbsp;<a
                        href="javascript:if(confirm('确实要删除该条记录吗？'))location='${yb}/deletecalldetails?id=${calldetails.callId}'"
                        style="cursor: pointer"><span
                        class="glyphicon glyphicon-remove"></span></a></td>
            </tr>
        </c:forEach>
    </table>

</div>
</tbody>

</html>