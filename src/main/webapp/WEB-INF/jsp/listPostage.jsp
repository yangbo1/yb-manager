<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
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
            <td><strong>资费id</strong></td>
            <td><strong>套餐类型</strong></td>
            <td><strong>电话资费(元/分)</strong></td>
            <td><strong>信息资费(元/条)</strong></td>
            <td><strong>月租(元)</strong></td>
            <td><strong>操作</strong></td>
        </tr>
        <c:forEach var="postages" items="${list}">
            <tr>
                <td>${postages.postId}</td>
                <td>${postages.type}</td>
                <td>${postages.callprice}</td>
                <td>${postages.messageprice}</td>
                <td>${postages.rent}</td>
                <td><a
                        href="${yb}/update-view-postage?id=${postages.postId}"><span
                        class="glyphicon glyphicon-pencil"></span></a>&nbsp; &nbsp;<a
                        href="javascript:if(confirm('确实要删除该条记录吗？'))location='${yb}/deletepostage?id=${postages.postId}'"
                        style="cursor: pointer"><span
                        class="glyphicon glyphicon-remove"></span></a></td>
            </tr>
        </c:forEach>
    </table>

</div>
</tbody>

</html>