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
            <td><strong>客户id</strong></td>
            <td><strong>客户姓名</strong></td>
            <td><strong>客户密码</strong></td>
            <td><strong>电话</strong></td>
            <td><strong>操作</strong></td>
        </tr>
        <c:forEach var="customer" items="${list}">
            <tr>
                <td>${customer.custId}</td>
                <td>${customer.username}</td>
                <td>${customer.password}</td>
                    <%--<td><fmt:formatDate value="${customer.birthday}" pattern="yyyy-MM-dd"/></td>--%>
                <td>${customer.tel}</td>
                <td><a
                        href="${yb}/update-view-customer?id=${customer.custId}"><span
                        class="glyphicon glyphicon-pencil"></span></a>&nbsp; &nbsp;<a
                        href="javascript:if(confirm('确实要删除该条记录吗？'))location='${yb}/deletecustomer?id=${customer.custId}'"
                        style="cursor: pointer"><span
                        class="glyphicon glyphicon-remove"></span></a></td>
            </tr>
        </c:forEach>
    </table>

</div>
</tbody>

</html>