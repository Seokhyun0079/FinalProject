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
                    <a class="nav-brand" href="index.html"><img src="/TunaMusic/resources/img/core-img/logo.png" alt=""></a>

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
                                        <li><a href="../../../charts.html">- Charts</a></li>
                                        <li><a href="../../../single-charts.html">- Charts Details</a></li>
                                        <li><a href="../../../podcast.html">- Podcast</a></li>
                                        <li><a href="../../../single-podcast.html">- Podcast Details</a></li>
                                        <li><a href="../../../show.html">- Show</a></li>
                                        <li><a href="../../../events.html">- Event</a></li>
                                        <li><a href="../../../blog.html">- Blog</a></li>
                                        <li><a href="../../../single-blog.html">- Blog Details</a></li>
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
                                <li><a href="../../../show.html">Shows</a></li>
                                <li><a href="../../../charts.html">Charts</a></li>
                                <li><a href="../../../podcast.html">Podcasts</a></li>
                                <li><a href="#">Mega</a>
                                    <div class="megamenu">
                                        <ul class="single-mega cn-col-4">
                                            <li><a href="./index.html">- Home</a></li>
                                            <li><a href="../../../charts.html">- Charts</a></li>
                                            <li><a href="../../../single-charts.html">- Charts Details</a></li>
                                            <li><a href="../../../podcast.html">- Podcast</a></li>
                                            <li><a href="../../../single-podcast.html">- Podcast Details</a></li>
                                        </ul>
                                        <ul class="single-mega cn-col-4">
                                            <li><a href="../../../show.html">- Show</a></li>
                                            <li><a href="../../../events.html">- Event</a></li>
                                            <li><a href="../../../blog.html">- Blog</a></li>
                                            <li><a href="../../../single-blog.html">- Blog Details</a></li>
                                            <li><a href="./index.html">- Home</a></li>
                                        </ul>
                                        <ul class="single-mega cn-col-4">
                                            <li><a href="../../../charts.html">- Charts</a></li>
                                            <li><a href="../../../single-charts.html">- Charts Details</a></li>
                                            <li><a href="../../../podcast.html">- Podcast</a></li>
                                            <li><a href="../../../single-podcast.html">- Podcast Details</a></li>
                                            <li><a href="../../../show.html">- Show</a></li>
                                        </ul>
                                        <ul class="single-mega cn-col-4">
                                            <li><a href="../../../show.html">- Show</a></li>
                                            <li><a href="../../../events.html">- Event</a></li>
                                            <li><a href="../../../blog.html">- Blog</a></li>
                                            <li><a href="../../../single-blog.html">- Blog Details</a></li>
                                            <li><a href="./index.html">- Home</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="../../../events.html">Events</a></li>
                                <li><a href="../../../blog.html">Blog</a></li>
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

<section class="uza-news-area section-padding-0-80">
    <div class="container" style="margin-top: 50px">
        <div class="row">
            <div class="col-12">
                <div class="section-heading text-center" style="padding: 30px 30px 30px 0px">
                    <h1>프로젝트명</h1>
                    <span>프로젝트 팀명</span>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="razo-blog-masonary">
            <div class="row razo-blog-masonary-item">
                <div class="col-8">
                    <img src="/TunaMusic/resources/img/bg-img/1.jpg" alt="">
                </div>
                <div class="col-4">
                    <span>모인 금액</span><br>
                    <h2 style="display: inline-block">1,000,000</h2>&nbsp;<span>원</span>&nbsp;&nbsp;
                    <h5 style="display: inline-block">100%</h5><br><br>

                    <span>남은시간</span><br>
                    <h2 style="display: inline-block">21</h2>&nbsp;<span>일</span><br><br>

                    <span>후원자</span><br>
                    <h2 style="display: inline-block">100</h2>&nbsp;<span>명</span><br><br>

                    <div class="event-purchase-button">
                        <a href="#" class="btn razo-btn"><i class="icon_cart"></i> 프로젝트 밀어주기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr>

    <div class="container">
        <div class="row razo-blog-masonary">
            <!-- <div class="row razo-blog-masonary-item"> -->
            <div class="col-8">
                <h6>프로젝트 스토리</h6>
                <p>안뇽하세요 우리 프로젝트는 멋찐 프로젝트에요</p>
            </div>
            <div class="col-4">
                <h6>창작자 소개</h6>
                <p>안녕하세요하하호호히히</p>
            </div>
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
</body>
</html>