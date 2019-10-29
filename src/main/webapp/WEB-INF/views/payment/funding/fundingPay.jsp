<%--
  Created by IntelliJ IDEA.
  User: Yeji
  Date: 2019-10-27
  Time: 오후 4:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>TUNA MUSIC | Funding Payment POPUP</title>

    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">

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
    <!-- 네이버페이  스크립트-->
    <script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js"></script>
</head>
<body>
<div>
    <h5 style="color: #DC2878; padding: 20px;">
        <img src="/TunaMusic/resources/img/core-img/fish.png" width="50" height="50">Crowd Funding 프로젝트 후원하기</h5>
</div>
<div style="text-align: center; border:2px solid #DC2878; border-radius: 3px; border-left-style: hidden; border-right-style: hidden; background-color:rgb(252, 252, 252); padding: 20px 0px;" >
    <input type="hidden" id="gno" name="gno" value="${goods.goodsNo}">
    <input type="hidden" id="fno" name="fno" value="${fno}">
    <h5 style="display: inline; margin: 0px 20px;">${goods.goodsName}</h5>
    <h5 style="display: inline; margin: 0px 20px; color: gray;">결제 금액</h5>
    <h5 style="display: inline; margin-left: 20px; color: #DC2878">${goods.goodsPrice}</h5>
    <h5 style="display: inline; color: black;">원</h5>
</div>
<div style="margin: 20px 0px; text-align: center">
    <input type="checkbox" name="chk_2" id="chk_2" value="agree">
    <label for="chk_2" style="margin: 0px">Tuna Music 유료서비스약관 및 유의사항에 동의합니다.</label>
</div>
<div style="text-align: center">
    <input type="image" id="naverPayBtn" src="/TunaMusic/resources/img/core-img/naverpay-btn.png" style="width: 150px; height: 50px;">&nbsp;
    <input type="image" id="kakaopayBtn" src="/TunaMusic/resources/img/core-img/kakao-btn.png">&nbsp;
    <input type="image" id="cardBtn" src="/TunaMusic/resources/img/core-img/card44.png" style="width: 100px; height: 50px;">
</div>
<br>
<div class="event-purchase-button" style="text-align: center;">
    <input type="button"class= "btn razo-btn"  name="btn_2" value="취소" onclick="window.close()">
</div>
<script>
    var gno = document.getElementById('gno').value;
    var fno = document.getElementById('fno').value

    // 카카오페이
    var elkakaoBtn = document.getElementById("kakaopayBtn");
    elkakaoBtn.addEventListener("click", function() {
        if(!$("#chk_2").is(":checked")){
            alert("약관에 동의해 주세요.")
        }else{
            // window.open("fKakao.do?gno="+gno+"&fno="+fno, "카카오 페이", "width=500, height=500, left=50");
            location.href="fKakao.do?gno="+gno+"&fno="+fno;
        }
    });
    //네이버페이
    var elnaverBtn = document.getElementById("naverPayBtn");
    elnaverBtn.addEventListener("click", function() {
        if(!$("#chk_2").is(":checked")){
            alert("약관에 동의해 주세요.")
        }else{
            // window.open("fNaverpay.do?gno="+gno+"&fno="+fno, "네이버 페이", "width=772, height=800, left=50");
            location.href="fNaverpay.do?gno="+gno+"&fno="+fno;
        }
    });
    // 신용카드
    var elcardBtn = document.getElementById("cardBtn");
    elcardBtn.addEventListener("click", function() {
        if(!$("#chk_2").is(":checked")){
            alert("약관에 동의해 주세요.")
        }else{
            // window.open("fCard.do?gno="+gno+"&fno="+fno, "이니시스 결제", "width=840, height=600, left=50");
            location.href="fCard.do?gno="+gno+"&fno="+fno;
        }
    });
</script>

</body>
</html>
