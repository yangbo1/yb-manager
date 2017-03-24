<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                    <td><strong>我的套餐</strong></td>
                    <td>${mypostage.type}</td>
                </tr>
            <%--</c:if>--%>
        </table>
        可选套餐列表<br>
        <table class="table table-hover">
            <tr class="active">

                <td><strong>套餐类型</strong></td>
                <td><strong>电话资费(元/分)</strong></td>
                <td><strong>信息资费(元/条)</strong></td>
                <td><strong>月租(元)</strong></td>

            </tr>
            <c:forEach var="postages" items="${list}">
                <tr>

                    <td>${postages.type}</td>
                    <td>${postages.callprice}</td>
                    <td>${postages.messageprice}</td>
                    <td>${postages.rent}</td>
                </tr>
            </c:forEach>
        </table>
    </div>

    <form class="form-horizontal" role="form" action="${yb}/saveMyPost" method="post">
        <input id="mpid" name="mpid" value="${mypostage.mpid}" hidden="hidden">
        <div class="btn-group">
            <select class="btn btn-default dropdown-toggle" name="type">
                <c:forEach var="postages" items="${list}">
                    <option>${postages.type}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">

            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" class="btn btn-default" id="button"
                       value="提交"/>
            </div>

        </div>
    </form>
</tbody>
</html>
