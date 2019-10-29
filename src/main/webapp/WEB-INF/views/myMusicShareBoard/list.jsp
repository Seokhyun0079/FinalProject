<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="kr">
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>Razo - Radio HTML Template | Podcast</title>

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
    <%@ include file="/WEB-INF/views/common/titlebar.jsp" %>
</header>
<!-- Header Area End -->

<!-- Podcast Thumbnail Area Start -->
<section class="podcast-hero-area section-padding-80 bg-overlay bg-img jarallax" style="background-image: url(/TunaMusic/resources/img/bg-img/11.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="podcast-hero-text section-padding-80 d-flex align-items-center">
                    <div class="podcast-txt- pr-md-5">
                        <h5>이 달의 인기곡!</h5>
                        <h2 id="title"></h2>
                    </div>
                    <a href="#" class="pt-5 pt-md-0 pl-md-5"><img  id="albumFile" src="/TunaMusic/resources/img/core-img/itunes.png" alt=""></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Podcast Thumbnail Area End -->

<!-- Audio Player Area Start -->
<div class="podcast-audio-player-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="audio-player">
                    <audio preload="auto" controls>
                        <source src="/TunaMusic/resources/audio/dummy-audio.mp3">
                    </audio>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Audio Player Area End -->

<!-- Latest Podcast Area Start -->
<section class="razo-latest-podcast-area section-padding-80">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <!-- Section Heading -->
                <div class="section-heading">
                    <h2>Latest on PodCast:</h2>
                </div>
            </div>
        </div>

        <div class="row">

            <!-- Single Podcast Area -->
            <c:forEach var ="article" items="${articlePage.pageContent}">
                <div class="col-12 col-md-6 col-xl-3">
                    <div class="single-podcast-area mb-30 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Thumbnail -->
                        <div class="podcast-thumb">
                            <img src="/TunaMusic/resources/img/bg-img/69.jpg" alt="">
                            <div class="like-comment">
                                <a href="#" class="like">${article.readCount} <i class="icon_heart"></i></a>
                                <a href="#" class="like">${article.best} <i class="icon_chat"></i></a>
                            </div>
                        </div>
                        <!-- Content -->
                        <div class="podcast-content">
                            <div class="podcast-meta">
                                <a href="#"><i class="icon_calendar"></i>${article.id}</a>
                                <a href="#"><i class="icon_clock_alt"></i> ${article.nickname}</a>
                            </div>
                            <h5>${article.title}</h5>
                            <div class="border-line"></div>
                            <div class="play-download-btn d-flex align-items-center justify-content-between">
                                <a href="/TunaMusic/myMusicShareBoard/article/read.do?articleNo=${article.articleNo}" class="btn razo-btn btn-sm">playing now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="view-more-button text-center">
                    <a href="/TunaMusic/myMusicShareBoard/article/list.do?page=${articlePage.page-1}" class="btn razo-btn mt-50">previous</a>
                    <c:forEach begin="${articlePage.startPage}" end="${articlePage.endPage}" step="1"  varStatus="status">
                        <a href="/TunaMusic/myMusicShareBoard/article/list.do?page=${status.index}" class="btn razo-btn mt-50">${status.index}</a>
                    </c:forEach>
                    <a href="/TunaMusic/myMusicShareBoard/article/list.do?page=${articlePage.page+1}" class="btn razo-btn mt-50">Next</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Latest Podcast Area End -->

<!-- Footer Area Start -->
<footer class="footer-area">
    <!-- Main Footer Area -->
    <div class="main-footer-area section-padding-80-0">
        <div class="container">
            <div class="row justify-content-between">

                <!-- Single Footer Widget -->
                <div class="col-12 col-sm-6 col-md-4 col-xl-3">
                    <div class="single-footer-widget mb-80">
                        <!-- Footer Logo -->
                        <a href="#" class="footer-logo"><img src="/TunaMusic/resources/img/core-img/logo2.png" alt=""></a>

                        <p class="mb-30">Lorem ipsum dolor sit amet, consectet adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

                        <!-- Footer Content -->
                        <div class="footer-content">

                            <!-- Single Contact Info -->
                            <div class="single-contact-info d-flex">
                                <div class="icon">
                                    <i class="icon_pin"></i>
                                </div>
                                <div class="text">
                                    <p>24 No. Amazing Valley, Aewsome St. New York, USA</p>
                                </div>
                            </div>

                            <!-- Single Contact Info -->
                            <div class="single-contact-info d-flex">
                                <div class="icon">
                                    <i class="icon_phone"></i>
                                </div>
                                <div class="text">
                                    <p>+11 123 4567890</p>
                                </div>
                            </div>

                            <!-- Single Contact Info -->
                            <div class="single-contact-info d-flex">
                                <div class="icon">
                                    <i class="icon_mail_alt"></i>
                                </div>
                                <div class="text">
                                    <p>info.colorlib@gmail.com</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- Single Footer Widget -->
                <div class="col-12 col-sm-6 col-md-4 col-xl-3">
                    <div class="single-footer-widget mb-80">

                        <!-- Widget Title -->
                        <h4 class="widget-title">Twitter Feed</h4>

                        <!-- Single Twitter Feed -->
                        <div class="single-twitter-feed d-flex">
                            <div class="tweet-icon">
                                <i class="fa fa-twitter"></i>
                            </div>
                            <div class="tweet">
                                <p><a href="#">Kerem Suer</a> @kerem American conducts it first ever done strike Qaeda</p>
                            </div>
                        </div>

                        <!-- Single Twitter Feed -->
                        <div class="single-twitter-feed d-flex">
                            <div class="tweet-icon">
                                <i class="fa fa-twitter"></i>
                            </div>
                            <div class="tweet">
                                <p><a href="#">Axel Hervelle</a> @axel_hervelle Tens of thousands attend rallies held in D.C.</p>
                            </div>
                        </div>

                        <!-- Single Twitter Feed -->
                        <div class="single-twitter-feed d-flex">
                            <div class="tweet-icon">
                                <i class="fa fa-twitter"></i>
                            </div>
                            <div class="tweet">
                                <p><a href="#">Chris Pratt</a> @chris_pratt Hundreds of protesters shut down meeting.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Footer Widget -->
                <div class="col-12 col-md-4 col-xl-3">
                    <div class="single-footer-widget mb-80">
                        <!-- Widget Title -->
                        <h4 class="widget-title">Instagram</h4>

                        <!-- Instagram Area -->
                        <div class="razo-instagram-area d-flex flex-wrap">
                            <!-- Single Instagram Feed -->
                            <div class="single-instagram-feed">
                                <a href="#"><img src="/TunaMusic/resources/img/bg-img/2.jpg" alt=""></a>
                            </div>

                            <!-- Single Instagram Feed -->
                            <div class="single-instagram-feed">
                                <a href="#"><img src="/TunaMusic/resources/img/bg-img/3.jpg" alt=""></a>
                            </div>

                            <!-- Single Instagram Feed -->
                            <div class="single-instagram-feed">
                                <a href="#"><img src="/TunaMusic/resources/img/bg-img/4.jpg" alt=""></a>
                            </div>

                            <!-- Single Instagram Feed -->
                            <div class="single-instagram-feed">
                                <a href="#"><img src="/TunaMusic/resources/img/bg-img/5.jpg" alt=""></a>
                            </div>

                            <!-- Single Instagram Feed -->
                            <div class="single-instagram-feed">
                                <a href="#"><img src="/TunaMusic/resources/img/bg-img/6.jpg" alt=""></a>
                            </div>

                            <!-- Single Instagram Feed -->
                            <div class="single-instagram-feed">
                                <a href="#"><img src="/TunaMusic/resources/img/bg-img/7.jpg" alt=""></a>
                            </div>

                            <!-- Single Instagram Feed -->
                            <div class="single-instagram-feed">
                                <a href="#"><img src="/TunaMusic/resources/img/bg-img/8.jpg" alt=""></a>
                            </div>

                            <!-- Single Instagram Feed -->
                            <div class="single-instagram-feed">
                                <a href="#"><img src="/TunaMusic/resources/img/bg-img/9.jpg" alt=""></a>
                            </div>

                            <!-- Single Instagram Feed -->
                            <div class="single-instagram-feed">
                                <a href="#"><img src="/TunaMusic/resources/img/bg-img/10.jpg" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Main Footer Area End -->

    <!-- Copywrite Text -->
    <div class="copywrite-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Copywrite Text -->
                    <div class="copywrite-text">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Area End -->

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
<u:isLogin>
    <script src="/TunaMusic/resources/js/mylist.js"></script>
</u:isLogin>
<script src="/TunaMusic/resources/js/music-list.js"></script>
</body>
</html>