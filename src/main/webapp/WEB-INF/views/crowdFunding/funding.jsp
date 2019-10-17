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
                                        <li><a href="./funding.html">- Funding</a>
                                            <ul class="dropdown">
                                                <li><a href="./fundingDetail.html">- Funding Details</a></li>
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
        <div style="margin-top: 30px; margin-bottom: 30px;">
            <!-- <img src="img/tunamusuc_funding_banner.png"> -->
            <a href="#"><img src="/TunaMusic/resources/img/etc-img/tunamusic_funding_banner(3).png"></a>
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
                <div class="col-3 razo-blog-masonary-item">
                    <div class="razo-blog-masonary-single-item">
                        <!-- Post Thumbnail -->
                        <div class="post-thumbnail">
                            <a href="#"><img src="/TunaMusic/resources/img/bg-img/44.jpg" alt=""></a>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                            <a href="#" class="post-title">Funding Title</a>
                            <p>funding subtitle</p>
                            <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                            <div class="progress" style="height: 5px;">
                                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%; background-color:#dc2878"></div>
                            </div>
                            <br>
                            <span>D-23</span>
                            <span>1,000,000원</span>
                            <span>100%</span>
                        </div>
                    </div>
                </div>
                <div class="col-3 razo-blog-masonary-item">
                    <div class="razo-blog-masonary-single-item">
                        <!-- Post Thumbnail -->
                        <div class="post-thumbnail">
                            <a href="#"><img src="/TunaMusic/resources/img/bg-img/44.jpg" alt=""></a>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                            <a href="#" class="post-title">Funding Title</a>
                            <p>funding subtitle</p>
                            <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                            <div class="progress" style="height: 5px;">
                                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%; background-color:#dc2878"></div>
                            </div>
                            <br>
                            <span>D-23</span>
                            <span>1,000,000원</span>
                            <span>100%</span>
                        </div>
                    </div>
                </div>
                <div class="col-3 razo-blog-masonary-item">
                    <div class="razo-blog-masonary-single-item">
                        <!-- Post Thumbnail -->
                        <div class="post-thumbnail">
                            <a href="#"><img src="/TunaMusic/resources/img/bg-img/44.jpg" alt=""></a>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                            <a href="#" class="post-title">Funding Title</a>
                            <p>funding subtitle</p>
                            <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                            <div class="progress" style="height: 5px;">
                                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%; background-color:#dc2878"></div>
                            </div>
                            <br>
                            <span>D-23</span>
                            <span>1,000,000원</span>
                            <span>100%</span>
                        </div>
                    </div>
                </div>
                <div class="col-3 razo-blog-masonary-item">
                    <div class="razo-blog-masonary-single-item">
                        <!-- Post Thumbnail -->
                        <div class="post-thumbnail">
                            <a href="#"><img src="/TunaMusic/resources/img/bg-img/44.jpg" alt=""></a>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                            <a href="#" class="post-title">Funding Title</a>
                            <p>funding subtitle</p>
                            <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                            <div class="progress" style="height: 5px;">
                                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%; background-color:#dc2878"></div>
                            </div>
                            <br>
                            <span>D-23</span>
                            <span>1,000,000원</span>
                            <span>100%</span>
                        </div>
                    </div>
                </div>
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
                <div class="col-3 razo-blog-masonary-item">
                    <div class="razo-blog-masonary-single-item">
                        <!-- Post Thumbnail -->
                        <div class="post-thumbnail">
                            <a href="#"><img src="/TunaMusic/resources/img/bg-img/45.jpg" alt=""></a>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                            <a href="#" class="post-title">Funding Title</a>
                            <p>funding subtitle</p>
                            <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                            <div class="progress" style="height: 5px;">
                                <div class="progress-bar" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width:30%; background-color:#dc2878"></div>
                            </div>
                            <br>
                            <span>D-23</span>
                            <span>300,000원</span>
                            <span>30%</span>
                        </div>
                    </div>
                </div>
                <div class="col-3 razo-blog-masonary-item">
                    <div class="razo-blog-masonary-single-item">
                        <!-- Post Thumbnail -->
                        <div class="post-thumbnail">
                            <a href="#"><img src="/TunaMusic/resources/img/bg-img/45.jpg" alt=""></a>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                            <a href="#" class="post-title">Funding Title</a>
                            <p>funding subtitle</p>
                            <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                            <div class="progress" style="height: 5px;">
                                <div class="progress-bar" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width:10%; background-color:#dc2878"></div>
                            </div>
                            <br>
                            <span>D-23</span>
                            <span>100,000원</span>
                            <span>10%</span>
                        </div>
                    </div>
                </div>
                <div class="col-3 razo-blog-masonary-item">
                    <div class="razo-blog-masonary-single-item">
                        <!-- Post Thumbnail -->
                        <div class="post-thumbnail">
                            <a href="#"><img src="/TunaMusic/resources/img/bg-img/45.jpg" alt=""></a>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                            <a href="#" class="post-title">Funding Title</a>
                            <p>funding subtitle</p>
                            <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                            <div class="progress" style="height: 5px;">
                                <div class="progress-bar" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100" style="width:15%; background-color:#dc2878"></div>
                            </div>
                            <br>
                            <span>D-23</span>
                            <span>150,000원</span>
                            <span>15%</span>
                        </div>
                    </div>
                </div>
                <div class="col-3 razo-blog-masonary-item">
                    <div class="razo-blog-masonary-single-item">
                        <!-- Post Thumbnail -->
                        <div class="post-thumbnail">
                            <a href="#"><img src="/TunaMusic/resources/img/bg-img/45.jpg" alt=""></a>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                            <a href="#" class="post-title">Funding Title</a>
                            <p>funding subtitle</p>
                            <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                            <div class="progress" style="height: 5px;">
                                <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width:20%; background-color:#dc2878"></div>
                            </div>
                            <br>
                            <span>D-23</span>
                            <span>200,000원</span>
                            <span>20%</span>
                        </div>
                    </div>
                </div>


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
                <div class="col-3 razo-blog-masonary-item">
                    <div class="razo-blog-masonary-single-item">
                        <!-- Post Thumbnail -->
                        <div class="post-thumbnail">
                            <a href="#"><img src="/TunaMusic/resources/img/bg-img/46.jpg" alt=""></a>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                            <a href="#" class="post-title">Funding Title</a>
                            <p>funding subtitle</p>
                            <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                            <div class="progress" style="height: 5px;">
                                <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width:80%; background-color:#dc2878"></div>
                            </div>
                            <br>
                            <span>D-23</span>
                            <span>800,000원</span>
                            <span>80%</span>
                        </div>
                    </div>
                </div>
                <div class="col-3 razo-blog-masonary-item">
                    <div class="razo-blog-masonary-single-item">
                        <!-- Post Thumbnail -->
                        <div class="post-thumbnail">
                            <a href="#"><img src="/TunaMusic/resources/img/bg-img/46.jpg" alt=""></a>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                            <a href="#" class="post-title">Funding Title</a>
                            <p>funding subtitle</p>
                            <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                            <div class="progress" style="height: 5px;">
                                <div class="progress-bar" role="progressbar" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100" style="width:95%; background-color:#dc2878"></div>
                            </div>
                            <br>
                            <span>D-23</span>
                            <span>950,000원</span>
                            <span>95%</span>
                        </div>
                    </div>
                </div>
                <div class="col-3 razo-blog-masonary-item">
                    <div class="razo-blog-masonary-single-item">
                        <!-- Post Thumbnail -->
                        <div class="post-thumbnail">
                            <a href="#"><img src="/TunaMusic/resources/img/bg-img/46.jpg" alt=""></a>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                            <a href="#" class="post-title">Funding Title</a>
                            <p>funding subtitle</p>
                            <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                            <div class="progress" style="height: 5px;">
                                <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width:90%; background-color:#dc2878"></div>
                            </div>
                            <br>
                            <span>D-23</span>
                            <span>900,000원</span>
                            <span>90%</span>
                        </div>
                    </div>
                </div>
                <div class="col-3 razo-blog-masonary-item">
                    <div class="razo-blog-masonary-single-item">
                        <!-- Post Thumbnail -->
                        <div class="post-thumbnail">
                            <a href="#"><img src="/TunaMusic/resources/img/bg-img/46.jpg" alt=""></a>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                            <a href="#" class="post-title">Funding Title</a>
                            <p>funding subtitle</p>
                            <!-- <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a> -->
                            <div class="progress" style="height: 5px;">
                                <div class="progress-bar" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width:85%; background-color:#dc2878"></div>
                            </div>
                            <br>
                            <span>D-23</span>
                            <span>850,000원</span>
                            <span>85%</span>
                        </div>
                    </div>
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