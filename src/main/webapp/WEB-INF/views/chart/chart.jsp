<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>Razo - Radio HTML Template | Charts</title>

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
                        <form action="index.jsp" method="post">
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
                        <a class="nav-brand" href="index.jsp"><img src="/TunaMusic/resources/img/core-img/logo.png" alt=""></a>

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
                                    <li><a href="./index.jsp">Home</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="./index.jsp">- Home</a></li>
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
                                                <li><a href="./index.jsp">- Home</a></li>
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
                                                <li><a href="./index.jsp">- Home</a></li>
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
                                                <li><a href="./index.jsp">- Home</a></li>
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

    <!-- Music Charts Area Start -->
    <section class="razo-music-charts-area section-padding-80 bg-overlay bg-img jarallax" style="background-image: url(/TunaMusic/resources/img/bg-img/34.jpg);">
        <div class="container">
            <div class="row">
                <!-- Section Heading -->
                <div class="col-12">
                    <div class="section-heading text-center white">
                        <h2>실시간 차트</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">


                <!-- Single Music Chart -->
				<c:forEach var="vo" items="${articleList}" step="1"  varStatus="status">
					<a href="http://localhost:8989/TunaMusic/musicBoard/article/read.do?articleNo=${vo.articleNo}">
                    <div class="single-music-chart d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="100ms">
                        <!-- Music Content -->
                        <div class="music-content d-flex align-items-center">
                            <div class="sl-number">
                                <h5>${status.index+1}</h5>
                            </div>
                            <div class="music-thumb">
                                <img src="/TunaMusic/resources/img/bg-img/25.jpg" alt="">
                            </div>
                            <div class="audio-player">
                                <audio preload="auto" controls>
                                    <source src="/TunaMusic/resources/audio/dummy-audio.mp3">
                                </audio>
                            </div>
                            <div class="music-title">
                                <h5>${vo.title} - <span>${vo.id}</span></h5>
                            </div>
                        </div>
                    </div>
                    </a>
				</c:forEach>

                </div>
            </div>
        </div>
    </section>
    <!-- Music Charts Area End -->

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
</body>
</html>

