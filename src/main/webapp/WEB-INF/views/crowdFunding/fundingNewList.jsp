<%--
  Created by IntelliJ IDEA.
  User: Yeji
  Date: 2019-10-26
  Time: 오후 7:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>Razo - Radio HTML Template | FundingList</title>

    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">

</head>

<body>
<!-- Preloader -->
<!-- <div id="preloader">
    <div>
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
        <span>Wait, please...</span>
    </div>
</div> -->
<!-- /Preloader -->

<!-- Top Search Area Start -->
<div class="top-search-area">
    <div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <!-- Close Button -->
                    <button type="button" class="btn close-btn" data-dismiss="modal"><i class="fa fa-times"></i></button>
                    <!-- Form -->
                    <form action="index.html" method="post">
                        <input type="search" name="top-search-bar" class="form-control" placeholder="Type keywords and hit enter...">
                        <button type="submit">Search</button>
                    </form>
                    <!-- Search Button -->
                    <div class="search-btn"><i class="icon_search"></i></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Top Search Area End -->

<!-- Social Share Area Start -->
<div class="razo-social-share-area">
    <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
    <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
    <a href="#" class="pinterest"><i class="fa fa-pinterest"></i></a>
    <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
    <a href="#" class="youtube"><i class="fa fa-youtube-play"></i></a>
    <a href="#" class="ss-close-btn"><i class="arrow_right"></i></a>
</div>
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
                    <a class="nav-brand" href="index.html"><img src="./img/core-img/logo.png" alt=""></a>

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
                                <li><a href="./index.html">Home</a></li>
                                <li><a href="#">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="./index.html">- Home</a></li>
                                        <li><a href="./charts.html">- Charts</a></li>
                                        <li><a href="./single-charts.html">- Charts Details</a></li>
                                        <li><a href="./podcast.html">- Podcast</a></li>
                                        <li><a href="./single-podcast.html">- Podcast Details</a></li>
                                        <li><a href="./show.html">- Show</a></li>
                                        <li><a href="./events.html">- Event</a></li>
                                        <li><a href="./blog.html">- Blog</a></li>
                                        <li><a href="./single-blog.html">- Blog Details</a></li>
                                        <li><a href="#">- Dropdown</a>
                                            <ul class="dropdown">
                                                <li><a href="#">- Dropdown Item</a></li>
                                                <li><a href="#">- Dropdown Item</a></li>
                                                <li><a href="#">- Dropdown Item</a></li>
                                                <li><a href="#">- Dropdown Item</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="./show.html">Shows</a></li>
                                <li><a href="./charts.html">Charts</a></li>
                                <li><a href="./podcast.html">Podcasts</a></li>
                                <li><a href="#">Mega</a>
                                    <div class="megamenu">
                                        <ul class="single-mega cn-col-4">
                                            <li><a href="./index.html">- Home</a></li>
                                            <li><a href="./charts.html">- Charts</a></li>
                                            <li><a href="./single-charts.html">- Charts Details</a></li>
                                            <li><a href="./podcast.html">- Podcast</a></li>
                                            <li><a href="./single-podcast.html">- Podcast Details</a></li>
                                        </ul>
                                        <ul class="single-mega cn-col-4">
                                            <li><a href="./show.html">- Show</a></li>
                                            <li><a href="./events.html">- Event</a></li>
                                            <li><a href="./blog.html">- Blog</a></li>
                                            <li><a href="./single-blog.html">- Blog Details</a></li>
                                            <li><a href="./index.html">- Home</a></li>
                                        </ul>
                                        <ul class="single-mega cn-col-4">
                                            <li><a href="./charts.html">- Charts</a></li>
                                            <li><a href="./single-charts.html">- Charts Details</a></li>
                                            <li><a href="./podcast.html">- Podcast</a></li>
                                            <li><a href="./single-podcast.html">- Podcast Details</a></li>
                                            <li><a href="./show.html">- Show</a></li>
                                        </ul>
                                        <ul class="single-mega cn-col-4">
                                            <li><a href="./show.html">- Show</a></li>
                                            <li><a href="./events.html">- Event</a></li>
                                            <li><a href="./blog.html">- Blog</a></li>
                                            <li><a href="./single-blog.html">- Blog Details</a></li>
                                            <li><a href="./index.html">- Home</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="./events.html">Events</a></li>
                                <li><a href="./blog.html">Blog</a></li>
                            </ul>

                            <!-- Share Icon -->
                            <div class="social-share-icon">
                                <i class="social_share"></i>
                            </div>

                            <!-- Search Icon -->
                            <div class="search-icon" data-toggle="modal" data-target="#searchModal">
                                <i class="icon_search"></i>
                            </div>
                        </div>
                        <!-- Nav End -->
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- Header Area End -->

<!-- Event Welcome Area Start -->
<section class="event-welcome-area bg-overlay bg-img jarallax" style="background-image: url(img/bg-img/54.jpg);">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-lg-9">
                <div class="event-welcome-text text-center">
                    <!-- <span>Event start on 19 March, 2018</span> -->
                    <h2>튜나뮤직 최신 프로젝트</h2>
                    <p>튜나뮤직의 최신 크라우드 펀딩 프로젝트 목록을 보여드립니다.</p>
                    <!-- <div class="coming-soon-clock mt-30 mb-30">
                        <div id="clock"></div>
                    </div> -->
                    <br>
                    <div class="event-btn-group">
                        <a href="#" class="btn razo-btn ">내 프로젝트 등록하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Event Welcome Area End -->

<!-- Event Search Area Start -->
<div class="event-search-area" style="padding: 60px;">
    <div class="container">
        <div class="event-search-content" style="margin: 0px 100px;">
            <form action="#" class="search-form">
                <div class="row align-items-end">
                    <div class="col form-group">
                        <select name="" id="" class="form-control">
                            <option value="제목">제목</option>
                            <option value="내용">내용</option>
                            <option value="제목+내용">제목+내용</option>
                        </select>
                    </div>
                    <div class="col-6 form-group">
                        <input type="search" class="form-control" id="search" placeholder="검색할 단어를 입력해주세요">
                    </div>
                    <div class="col form-group text-right">
                        <button type="submit" class="btn razo-btn w-100">프로젝트 검색</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Event Search Area End -->

<!-- Razo Event Area Start -->
<section class="razo-events-area section-padding-0-80">
    <div class="container">
        <div class="row">

            <!-- Single Razo Event Area -->
            <div class="col-12">
                <c:forEach var="fd" items="">
                    <div class="single-razo-event-area d-flex flex-wrap align-items-center mb-50 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Thumbnail -->
                        <div class="event-thumbnail">
                            <img src="img/bg-img/64.jpg" alt="">
                        </div>
                        <!-- Event Content -->
                        <div class="event-content d-flex align-items-center row">
                            <div class="event-text col-7">
                                <h5>Funding Title</h5>
                                <div class="event-meta">
                                    <a href="#" class="event-date"><i class="icon_calendar"></i> March 11, 2018</a>
                                    <a href="#" class="event-time"><i class="icon_clock_alt"></i> D-day</a>
                                </div>
                                <p>Funding Subtitle</p>
                                <a href="#" class="btn read-more-btn">프로젝트 보기 <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                            </div>
                            <!-- Event Purchase Button -->
                            <div class="event-purchase-button col">
                                <a href="#" class="btn razo-btn"><i class="icon_cart"></i> 프로젝트 후원</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>

                <div class="single-razo-event-area d-flex flex-wrap align-items-center mb-50 wow fadeInUp" data-wow-delay="100ms">
                    <c:forEach var="fd" items="">
                    </c:forEach>
                </div>
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
