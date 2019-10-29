<%--
  Created by IntelliJ IDEA.
  User: Yeji
  Date: 2019-10-10
  Time: 오후 12:13
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
    <title>Razo - Radio HTML Template | Funding</title>

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

<!-- Latest News Area Start -->
<section class="razo-latest-news-area bg-overlay bg-img jarallax" style="background-image: url(/TunaMusic/resources/img/bg-img/32.jpg);">
    <!-- Razo Latest News Slide -->
    <div class="razo-latest-news-slide owl-carousel">
        <!-- Single Latest News Area -->
        <div class="razo-single-latest-news-area bg-overlay bg-img" style="background-image: url(/TunaMusic/resources/img/bg-img/22.jpg);">
            <!-- Post Content -->
            <div class="post-content">
                <a href="#" class="post-title">Crowd Funding List 1</a>
                <p>Crowd Funding List1 Test Crowd Funding List1 Test Crowd Funding List1 Test Crowd Funding List1 Test Crowd Funding List1 Test Crowd Funding List1 Test</p>
            </div>
            <!-- Post Date -->
            <div class="post-date">
                <h2>8</h2>
                <p>October</p>
            </div>
            <!-- Read More -->
            <div class="read-more-btn">
                <a href="#" class="btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
            </div>
        </div>

        <!-- Single Latest News Area -->
        <div class="razo-single-latest-news-area bg-overlay bg-img" style="background-image: url(/TunaMusic/resources/img/bg-img/23.jpg);">
            <!-- Post Content -->
            <div class="post-content">
                <a href="#" class="post-title">Crowd Funding List 2</a>
                <p>Crowd Funding List2 Test Crowd Funding List2 Test Crowd Funding List2 Test Crowd Funding List2 Test Crowd Funding List2 Test Crowd Funding List2 Test</p>
            </div>
            <!-- Post Date -->
            <div class="post-date">
                <h2>8</h2>
                <p>October</p>
            </div>
            <!-- Read More -->
            <div class="read-more-btn">
                <a href="#" class="btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
            </div>
        </div>
    </div>
</section>

<section class="uza-news-area section-padding-0-80">
    <div class="container">
        <!-- <div class="row razo-blog-masonary"> -->
        <div class="bg-overlay bg-img" style="margin-top: 30px; margin-bottom: 30px; text-align: center; padding: 30px; background-image: url(/TunaMusic/resources/img/bg-img/54.jpg);">
            <!-- <img src="img/tunamusuc_funding_banner.png"> -->
            <%--<a href="#"><img src="/TunaMusic/resources/img/etc-img/tunamusic_funding_banner(3).png"></a>--%>
            <h2 style="color: #FFFFFF">당신만의 굿즈, 마음속의 꿈을 현실로</h2>
            <p style="color: #FFFFFF">당신의 이야기를 소개하고 든든한 후원자들을 만나보세요</p>
            <br>
            <a href="#" class="btn razo-btn ">내 프로젝트 등록하기</a>
        </div>
    </div>
    <div class="container" style="margin-bottom: 50px">
        <div class="row">
            <div class="col-12">
                <div class="row" style="padding: 30px 30px 10px 0px;">
                    <div class="col text-left">
                        <h5 class="text-left" style="display: inline;">인기 프로젝트</h5>
                    </div>
                    <div class="col text-right">
                        <a href="#" class="btn read-more-btn" style="font-size: 14px;">더 보기<i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row razo-blog-masonary">
            <!-- Single Blog Item -->
            <div class="row">
                <c:forEach var="fd" items="${hotList}">
                    <div class="col-3 razo-blog-masonary-item">
                        <div class="razo-blog-masonary-single-item">
                            <!-- Post Thumbnail -->
                            <div class="post-thumbnail" style="width: 255px; height: 200px; overflow: hidden; display: flex;">
                                <a href="#"><img src="/TunaMusic/resources/editor/photoUpload/${fd.fileName}" alt="" style="width: 255px; height: 100%;"></a>
                            </div>
                            <!-- Post Content -->
                            <div class="post-content">
                                <a href="#" class="post-title">${fd.ftitle}</a>
                                <span>${fd.fcreator}</span>
                                <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                                <div class="progress" style="height: 5px; margin: 10px 0px;">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="${fd.percent}" aria-valuemin="0" aria-valuemax="100" style="width:${fd.percent}%; background-color:#dc2878"></div>
                                </div>
                                <div class="post-date" style="margin-bottom: 10px">
                                    <span style="float: left"><i class="fa fa-calendar" aria-hidden="true"></i> D-${fd.dDay}</span>
                                    <div class="row" style="float: right; margin: 0px">
                                        <span>${fd.famount}원</span>&nbsp;&nbsp;
                                        <span style="font-size: 12px; line-height: 23px">${fd.percent}%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>

    <div class="container" style="margin-bottom: 50px">
        <div class="row">
            <div class="col-12">
                <div class="row" style="padding: 30px 30px 10px 0px;">
                    <div class="col text-left">
                        <h5 class="text-left" style="display: inline;">새로운 프로젝트</h5>
                    </div>
                    <div class="col text-right">
                        <a href="#" class="btn read-more-btn" style="font-size: 14px;">더 보기<i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row razo-blog-masonary">
            <!-- Single Blog Item -->
            <div class="row">
                <c:forEach var="fd" items="${newList}">
                    <div class="col-3 razo-blog-masonary-item">
                        <div class="razo-blog-masonary-single-item">
                            <!-- Post Thumbnail -->
                            <div class="post-thumbnail" style="width: 255px; height: 200px; overflow: hidden; display: flex;">
                                <a href="#"><img src="/TunaMusic/resources/editor/photoUpload/${fd.fileName}" style="width: 255px; height: 100%;" alt=""></a>
                            </div>
                            <!-- Post Content -->
                            <div class="post-content">
                                <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> ${fd.regDate}</div>
                                <a href="#" class="post-title" style="font-size: 16px;">${fd.ftitle}</a>
                                <p>funding subtitle</p>
                                <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                                <div class="progress" style="height: 5px;">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="${fd.percent}" aria-valuemin="0" aria-valuemax="100" style="width:${fd.percent}%; background-color:#dc2878"></div>
                                </div>
                                <br>
                                <span>D-${fd.dDay}</span>
                                <span>${fd.fgoal}원</span>
                                <span>${fd.percent}%</span>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>

    <div class="container" style="margin-bottom: 50px">
        <div class="row">
            <div class="col-12">
                <div class="row" style="padding: 30px 30px 10px 0px;">
                    <div class="col text-left">
                        <h5 class="text-left" style="display: inline;">성공임박 프로젝트</h5>
                    </div>
                    <div class="col text-right">
                        <a href="#" class="btn read-more-btn" style="font-size: 14px;">더 보기<i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row razo-blog-masonary">
            <!-- Single Blog Item -->
            <div class="row">
                <c:forEach var="fd" items="${almostList}">
                    <div class="col-3 razo-blog-masonary-item">
                        <div class="razo-blog-masonary-single-item">
                            <!-- Post Thumbnail -->
                            <div class="post-thumbnail" style="width: 255px; height: 200px; overflow: hidden; display: flex;">
                                <a href="#"><img src="/TunaMusic/resources/editor/photoUpload/${fd.fileName}" alt=""></a>
                            </div>
                            <!-- Post Content -->
                            <div class="post-content">
                                <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> ${fd.regDate}</div>
                                <a href="#" class="post-title">${fd.ftitle}</a>
                                <p>funding subtitle</p>
                                <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                                <div class="progress" style="height: 5px;">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="${fd.percent}" aria-valuemin="0" aria-valuemax="100" style="width:${fd.percent}%; background-color:#dc2878"></div>
                                </div>
                                <br>
                                <span>D-${fd.dDay}</span>
                                <span>${fd.fgoal}원</span>
                                <span>${fd.percent}%</span>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
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
</body>
</html>