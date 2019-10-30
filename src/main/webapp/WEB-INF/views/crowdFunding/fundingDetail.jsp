<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Yeji
  Date: 2019-10-10
  Time: 오후 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title> TUNA MUSIC | CrowdFunding</title>

    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">
</head>
<body>
<!-- Preloader -->
<div id="preloader">
    <div>
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
        <span>Wait, please...</span>
    </div>
</div>
<!-- /Preloader -->
<!-- Top Login Area Start -->
<%@ include file="/WEB-INF/views/common/iconmodal.jsp"%>
<!-- Top Login Area End -->

<!-- Social Share Area Start -->
<%@ include file="/WEB-INF/views/common/mylist.jsp"%>
<!-- Social Share Area End -->

<!-- Header Area Start -->
<header class="header-area">
    <%@ include file="/WEB-INF/views/common/titlebar.jsp"%>
</header>

<section class="uza-news-area section-padding-0-80">
    <div class="container" style="margin-top: 50px">
        <div class="row">
            <div class="col-12">
                <div class="section-heading text-center" style="padding: 30px 30px 30px 0px">
                    <h1>${funding.ftitle}</h1>
                    <span>${funding.fcreator}</span>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="razo-blog-masonary">
            <div class="row razo-blog-masonary-item">
                <div style="width: 730px; height: 486px; padding: 15px; overflow: hidden; text-align: center; display: flex">
                    <img src="/TunaMusic/resources/editor/photoUpload/${funding.fileName}" alt="" style="width: 730px; height: auto;">
                </div>
                <div style="width: 350px; height: 486px; padding: 15px;">
                    <span>모인 금액</span><br>
                    <h2 style="display: inline-block">${funding.famount}</h2>&nbsp;<span>원</span>&nbsp;&nbsp;
                    <h5 style="display: inline-block">${funding.percent}%</h5><br><br>

                    <span>남은시간</span><br>
                    <h2 style="display: inline-block">${funding.dDay}</h2>&nbsp;<span>일</span><br><br>

                    <span>후원자</span><br>
                    <h2 style="display: inline-block">${funding.fbacker}</h2>&nbsp;<span>명</span><br><br>

                    <input type="hidden" id="gno" name="gno" value="${funding.freward}">
                    <input type="hidden" id="fno" name="fno" value="${funding.fno}">

                    <div class="event-purchase-button">
                        <a href="#" class="btn razo-btn" onclick="paymentPopup();"><i class="icon_cart"></i> 프로젝트 밀어주기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr>

    <div class="container" style="margin-top: 30px">
        <div class="row razo-blog-masonary">
            <!-- <div class="row razo-blog-masonary-item"> -->
            <div class="col-8">
                <h6>프로젝트 스토리</h6>
                <p>${funding.fcontent}</p>
            </div>
            <div class="col-4">
                <h6>창작자 소개</h6>
                <p>${funding.fcreatorInfo}</p>
                <c:if test="${funding.id == loginId}">
                    <div class="col-8" style="margin-top: 30px;">
                        <a href="/TunaMusic/crowdFunding/modifyFunding.do?fno=${funding.fno}"><input type="submit" class="razo razo-btn" id="modifybtn" name="modifybtn" value="수정"></a>
                    </div>
                </c:if>
            </div>
            <%--<c:if test="">--%>
                <%----%>
            <%--</c:if>--%>
            <!-- </div> -->
        </div>
    </div>
</section>


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
    var fno = document.getElementById("fno").value;
    var gno = document.getElementById("gno").value;
    var res = gno.split(':');

    function paymentPopup() {
        var url = "/TunaMusic/payment/fundingPay.do?gno="+res[0]+"&fno="+fno;
        var name = "fundingPayment_popup";
        var option = "width = 500, height = 500, top = 100, left = 200";
        window.open(url, name, option);
    }
</script>

</body>
</html>