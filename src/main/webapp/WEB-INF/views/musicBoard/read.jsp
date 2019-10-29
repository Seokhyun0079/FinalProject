<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

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
    <!-- Main Header Start -->
    <div class="main-header-area">
        <div class="classy-nav-container breakpoint-off">
            <div class="container">
                <!-- Classy Menu -->
                <nav class="classy-navbar justify-content-between" id="razoNav">

                    <!-- Logo -->
                    <a class="nav-brand" href="/TunaMusic/"><img src="/TunaMusic/resources/img/core-img/logo.png" alt=""></a>

                    <!-- Navbar Toggler -->
                    <div class="classy-navbar-toggler">
                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                    </div>

                    <!-- Menu -->
                    <div class="classy-menu">
                        <!-- Menu Close Button -->
                        <div class="classycloseIcon">
                            <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                        </div>

                        <!-- Nav Start -->
                        <div class="classynav">
                            <ul id="nav">
                                <li><a href="/TunaMusic">Home</a></li>
                                <li><a href="#">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="/TunaMusic/">- Home</a></li>
                                        <li><a href="/TunaMusic/chart/chartView.do">- Charts</a></li>
                                        <li><a href="/TunaMusic/musicBoard/article/list.do">-MusicBoard</a>
                                            <ul class="dropdown">
                                                <li><a href="/TunaMusic/musicBoard/article/list.do">- list</a></li>
                                                <li><a href="/TunaMusic/musicBoard/article/write.do">- write</a></li>
                                            </ul></li>
                                        <li><a href="/TunaMusic/myMusicShareBoard/article/list.do">-My Music Share Board</a>
                                            <ul class="dropdown">
                                                <li><a href="/TunaMusic/myMusicShareBoard/article/list.do">- list</a></li>
                                                <li><a href="/TunaMusic/myMusicShareBoard/article/write.do">- write</a></li>
                                            </ul></li>
                                    </ul>
                                </li>
                                <li><a href="/TunaMusic/chart/chartView.do">Charts</a></li>
                                <li><a href="/TunaMusic/musicBoard/article/list.do">MusicBoard</a></li>
                                <li><a href="/TunaMusic/myMusicShareBoard/article/list.do">My Music Share Board</a></li>
                                <li><a href="/TunaMusic/magazine.do">Magazine</a></li>
                            </ul>
                            <div class="search-icon" >
                                <i id ="add-my-music" class="">+</i>
                            </div>
                            <!-- Share Icon -->
                            <div id="list-button" class="social-share-icon">
                                <i class="fa fa-music"></i>
                            </div>
                            <!-- Login Icon -->
                            <c:choose>
                                <c:when test="${empty loginUser }">
                                    <div class="search-icon" data-toggle="modal" data-target="#loginModal">
                                        <i class="fa fa-sign-in"></i>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="search-icon" id="user-icon" style="cursor:pointer;">
                                        <ul>
                                            <li><i class="fa fa-user"></i>
                                                <ul>
                                                    <li><a href="/TunaMusic/member/mypage.do">&nbsp&nbspMY PAGE</a></li><br>
                                                    <li><a href="/TunaMusic/member/edit.do">&nbsp&nbspEDIT</a></li><br>
                                                    <li><a href="/TunaMusic/member/logout.do">&nbsp&nbspLOG-OUT</a></li><br>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <!-- Nav End -->
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- Main Header Start -->
<!-- Header Area End -->
<!-- Podcast Thumbnail Area Start -->
<section class="podcast-hero-area section-padding-80 bg-overlay bg-img jarallax" style="background-image: url(/TunaMusic/resources/img/bg-img/11.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="podcast-hero-text section-padding-80 d-flex align-items-center">
                    <div class="podcast-txt- pr-5">
                        <h2>${article.title}</h2>
                        <div class="podcast-meta-data">
                            <a href="#" class="event-date"><i class="icon_calendar"></i> ${article.id}</a>
                        </div>
                    </div>
                    <a href="#" class="pt-5 pt-md-0 pl-md-5"><img src="/TunaMusic/resources/albumImageUpload/${article.albumFile}" alt=""></a>
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
                    <audio id="music-player" preload="auto" controls>
                        <source src="/TunaMusic/resources/upload/${article.fileName}">
                    </audio>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Audio Player Area End -->

<!-- Blog Details Area Start -->
<section class="blog-details-area section-padding-80">
    <div class="container">
        <!-- Post Details Text -->
        <div class="post-details-text">
            <div class="row justify-content-center">
                <div class="col-12 col-sm-2 col-xl-1">
                    <!-- Post Share -->
                    <div class="razo-author-avatar">
                        <a href="/TunaMusic/letter/write.do?id=${article.id}" onclick="window.open(this.href, '_blanck', 'width=600, height=800'); return false">
                            <img src="/TunaMusic/resources/uploadFiles/${article.profileIMG}" alt="">
                            <h6>${article.nickname}</h6>
                        </a>
                    </div>
                </div>

                <div class="col-12 col-sm-10 col-xl-9">
                    <h5>${article.title}</h5><br><br>
                    <p>${article.text}</p><br><br>
                    <div style="display: inline-block; width : 50%; margin-left: 25%; text-align: center">
                        <div style=" display: inline-block;margin-right: 30px; border: 5px solid black; width : 100px; "><h5 style="background-color: black; color : white;">Best</h5><br><h5 id="best">${article.best}</h5></div>
                        <div  style="display: inline-block;margin-right: 30px; border: 5px solid black; width : 100px;"><h5 style="background-color: black; color : white;">Bad</h5><br><h5 id="bad">${article.bad}</h5></div><br><br>
                        <div><h5 id="myMusicCount" style="display: inline"></h5> 명이 마이리스트에 넣은 곡입니다.</div>
                        <c:set var="id" value="${article.id}" />
                        <c:if test="${loginUser.userId eq id }">
                            <div>
                                <br><br>
                                <a href="/TunaMusic/musicBoard/article/edit.do?articleNo=${article.articleNo}" style="color:white;" class="btn razo-btn btn-3 mt-15">Edit</a>
                                <a href="/TunaMusic/musicBoard/article/remove.do?articleNo=${article.articleNo}" style="color:white;" class="btn razo-btn btn-3 mt-15">Delete</a>
                            </div>
                        </c:if>
                    </div>
                    <div class="razo-next-prev-pager mb-80 d-flex align-items-center justify-content-between">
                        <div class="prev-pager">
                            <a href="/TunaMusic/musicBoard/article/read.do?articleNo=${article.prev}"><span>Previous</span>
                                <h6><i class="fa fa-long-arrow-left" aria-hidden="true"></i> 이전글 보러가기</h6>
                            </a>
                        </div>
                        <div class="next-pager text-right">
                            <a href="/TunaMusic/musicBoard/article/read.do?articleNo=${article.next}"><span>Next</span>
                                <h6>다음 글 보러가기 <i class="fa fa-long-arrow-right" aria-hidden="true"></i></h6>
                            </a>
                        </div>
                    </div>
                    <div class="comment_area mb-50 clearfix">
                        <h5 class="title">${article.commentCount} Comments</h5>

                        <ol id="comment-list">
                            <!-- Single Comment Area -->
                            <!-- Single Comment Area -->
                        </ol>
                    </div>
                    <!-- Leave A Reply -->
                    <div class="razo-contact-form">
                        <h2 class="mb-4" id="point">Leave A Comment</h2>
                        <!-- Form -->
                            <div class="row">
                                <div class="col-12">
                                    <textarea id="message" name="message" class="form-control mb-30" placeholder="Comment"></textarea>
                                </div>
                                <div class="col-12">
                                    <button id ="comment-buutton" type="submit" class="btn razo-btn btn-3 mt-15">Post Comment</button>
                                </div>
                                <div class="col-lg-12">
                                    <input id="articleNo" type="text" name="message-name" class="form-control mb-30" style="visibility:hidden;" value="${article.articleNo}">
                                </div>
                                <div class="col-lg-12">
                                    <input id="id" type="text" name="message-name" class="form-control mb-30" style="visibility:hidden;" value="${sessionScope.loginUser.userId}">
                                </div>
                                <div class="col-lg-12">
                                    <input id="reply-no" type="text" name="message-name" class="form-control mb-30" style="visibility:hidden;" value="0">
                                </div>
                                <div class="col-lg-12">
                                    <input id="file-name" type="text" name="message-name" class="form-control mb-30" style="visibility:hidden;" value="${article.fileName}" hidden>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Details Area End -->

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
<script src="/TunaMusic/resources/js/comment.js"></script>
<u:isLogin>
    <script src="/TunaMusic/resources/js/mylist.js"></script>
</u:isLogin>
<script src="/TunaMusic/resources/js/musicboard-read.js"></script>
</body>
</html>