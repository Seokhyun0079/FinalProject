<%--
  Created by IntelliJ IDEA.
  User: Master
  Date: 2019-10-25
  Time: 오전 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/TunaMusic/resources/js/jquery.min.js"></script>
    <script src="/TunaMusic/resources/js/letter.js"></script>
</head>
<body style="background: #0c0c0c; color : white; margin: 0 0 0 0;">
<input type="text" id="to" value="${param.id}" hidden>
<h1>To.${param.id}</h1>
<div id="letter-list" style="height:  650px; overflow-y:scroll;">
    <table style="float: left;">
        <tr>
            <th><h1>id </h1></th>
        </tr>
        <tr>
            <th><h3>글씨칸</h3></th>
        </tr>
    </table><br><br><br><br><br><br>
    <table style="float: right;">
        <tr>
            <th><h1>id </h1></th>
        </tr>
        <tr>
            <th><h3>글씨칸</h3></th>
        </tr>
    </table><br><br><br><br><br><br>
    <table style="float: left;">
        <tr>
            <th><h1>id </h1></th>
        </tr>
        <tr>
            <th><h3>글씨칸</h3></th>
        </tr>
    </table><br><br><br><br><br><br>
</div>
<div style="position: absolute; top : 770px;width : 100%;">
    <input id="message" type="text" style="height: 30px; width : 80%"><button id="sendButton" style="height: 30px; width :20%;">send</button>
</div>
</body>
</html>
