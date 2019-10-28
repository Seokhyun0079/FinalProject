<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>naverpay</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
<input type="hidden" id="fno" name="fno" value="${fno}">
<input type="hidden" id="gno" name="gno" value="${goods.goodsNo}">
<input type="hidden" id="gname" name="gname" value="${goods.goodsName}">
<input type="hidden" id="gprice" name="gprice" value="${goods.goodsPrice}">
<!-- <input type="button" id="naverPayBtn" value="네이버페이 결제 버튼"> -->
<script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js"></script>

<script>
    var fno = document.getElementById('fno').value;
    var gno = document.getElementById('gno').value;
    var gname = document.getElementById('gname').value;
    var gprice = document.getElementById('gprice').value;

    var oPay = Naver.Pay.create({
        "mode" : "production", // development or production
        "clientId": "u86j4ripEt8LRfPGzQ8" // clientId
    });

    //직접 만드신 네이버페이 결제버튼에 click Event를 할당하세요
    // var elNaverPayBtn = document.getElementById("naverPayBtn");
    // elNaverPayBtn.addEventListener("click", function() {

    oPay.open({
        "merchantUserKey": "u86j4ripEt8LRfPGzQ8",
        "merchantPayKey": "vip",
        "productName": gname,
        "totalPayAmount": gprice,
        "taxScopeAmount": gprice,
        "taxExScopeAmount": "0",
        "returnUrl": "fPaySuccess2.do?gno="+gno+"&fno="+fno
    });


    /* }); */
</script>

</body>
</html>