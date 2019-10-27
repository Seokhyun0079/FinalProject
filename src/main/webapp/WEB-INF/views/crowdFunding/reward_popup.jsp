<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Yeji
  Date: 2019-10-22
  Time: 오후 7:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>Razo - Radio HTML Template | Podcast Details</title>

    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">
</head>
<body>
    <form action="/TunaMusic/crowdFunding/insertReward2.do" method="post">
        <div class="container">
            <h6>후원 금액</h6>
            <input type="number" id="goodsPrice" name="goodsPrice" class="form-control">
            <br>

            <h6>아이템 이름</h6>
            <input type="text" id="goodsName" name="goodsName" class="form-control">
            <br>

            <input type="hidden" name="goodsNo" id="goodsNo" value="0">

            <input type="submit" class="razo razo-btn" value="확인" onclick="moveClose();">
        </div>
    </form>

    <!-- All JS Files -->

    <!-- jQuery -->
    <script src="/TunaMusic/resources/js/jquery.min.js"></script>
    <!-- Popper -->
    <script src="/TunaMusic/resources/js/popper.min.js"></script>
    <!-- Bootstrap -->
    <script src="/TunaMusic/resources/js/bootstrap.min.js"></script>
    <!-- All Plugins -->
    <script src="/TunaMusic/resources/js/razo.bundle.js"></script>
    <!-- Active -->
    <script src="/TunaMusic/resources/js/default-assets/active.js"></script>

    <script>
        function moveClose() {
            // opener.location.reload();
            window.close();
        }
    </script>
</body>
</html>