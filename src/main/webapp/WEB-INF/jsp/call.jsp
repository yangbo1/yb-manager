<%--
  Created by IntelliJ IDEA.
  User: 杨波
  Date: 2017/3/24
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="user.jsp"%>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${yb}/resources/css/style.css">
    <script src="${yb}/resources/js/jquery.runner-min.js"></script>
</head>
<body>
<!--左边-->
<form id="form" action="${yb}/called" method="post">
    <input id="id" name="id" value="<%=id%>" hidden="hidden">
    <input id="time" name="time" hidden="hidden">
</form>
<div id="left" style="margin:0px auto;  width:400px;  height:711px;" >

    <div class="container-fluid" style="background-image:url('${yb}/resources/image/5.PNG');">
        <div  >
            <span id="runner"></span><br><br>
            <div class="col-sm-10 col-sm-offset-2">
                <div class="col-xs-4 col-sm-3 centered"><button id="startBtn"><strong><font color="#FFFFFF">通话</font></strong></button></div>
                <div class="col-xs-4 col-sm-3 centered"><button id="stopBtn"><strong><font color="#FFFFFF">挂断</font></strong></button></div>
            </div>
        </div>
    </div>
</div>
<!--左边-->
</body>
<script language="JavaScript">
    $('#runner').runner({

        milliseconds: false,
        format: function millisecondsToString(milliseconds) {
            var oneHour = 18000;
            var oneMinute = 300;
            var oneSecond = 5;
            var seconds = 0;
            var minutes = 0;
            var hours = 0;
            var result;

            if (milliseconds >= oneHour) {
                hours = Math.floor(milliseconds / oneHour);
            }

            milliseconds = hours > 0 ? (milliseconds - hours * oneHour) : milliseconds;

            if (milliseconds >= oneMinute) {
                minutes = Math.floor(milliseconds / oneMinute);
            }

            milliseconds = minutes > 0 ? (milliseconds - minutes * oneMinute) : milliseconds;

            if (milliseconds >= oneSecond) {
                seconds = Math.floor(milliseconds / oneSecond);
            }

            milliseconds = seconds > 0 ? (milliseconds - seconds * oneSecond) : milliseconds;

            if (hours > 0) {
                result = (hours > 9 ? hours : "0" + hours) + ":";
            } else {
                result = "00:";
            }

            if (minutes > 0) {
                result += (minutes > 9 ? minutes : "0" + minutes) + ":";
            } else {
                result += "00:";
            }

            if (seconds > 0) {
                result += (seconds > 9 ? seconds : "0" + seconds);
            } else {
                result += "00";
            }

            return result;
        }
    });





    $('#startBtn').click(function() {
        $('#runner').runner('start');
        $(this).addClass('activeBtn');
        $('#stopBtn').removeClass('activeBtn');
    });



    $('#stopBtn').click(function() {
        $('#runner').runner('stop');
        $(this).addClass('activeBtn');
        $('#startBtn').removeClass('activeBtn');

        var time = $('span').text();
        $('#time').attr("value",time);
        $('#form').submit();
    });

</script>
</html>
