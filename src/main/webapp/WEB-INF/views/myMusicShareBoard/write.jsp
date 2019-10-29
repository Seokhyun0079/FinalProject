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
    <title>Razo - Radio HTML Template | Blog Details</title>

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

<!-- Social Share Area End -->
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

<!-- Blog Details Post Thumbnail Area Start -->
<section class="blog-details-post-thumbnail-area bg-overlay bg-img jarallax" style="background-image: url(/TunaMusic/resources/img/bg-img/53.jpg);">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12">
                <div class="post-title-text">
                    <h2>The light and music exposition hits los angeles</h2>
                    <div class="post-meta">
                        <a href="#">May 14, 2018</a>
                        <a href="#">Post by John Milley</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Details Post Thumbnail Area End -->

<!-- Blog Details Area Start -->
<section class="blog-details-area section-padding-80">
    <div class="container">
        <!-- Post Details Text -->
        <div class="post-details-text">
            <div class="row justify-content-center">
                    <!-- Comments Area -->

                    <!-- Leave A Reply -->
                    <div class="razo-contact-form">
                        <h2 class="mb-4">Leave Your Soul</h2>

                        <!-- Form -->
                        <form action="/TunaMusic/myMusicShareBoard/article/write.do" accept-charset="UTF-8" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <input name="id" type = "text" style="visibility: hidden;" value="${sessionScope.loginUser.userId }">
                                <div class="col-12">
                                    <input type="text" name="title" class="form-control mb-30" placeholder="Title" ${article.title}>
                                </div>
                                <div class="col-12">
                                    <textarea name="content" class="form-control mb-30" placeholder="Text"></textarea>
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn razo-btn btn-3 mt-15">Post Emotion</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Details Area End -->

<!-- Related News Area Start -->
<div class="related-news-area">
    <div class="container">
        <div class="row">
            <!-- Section Heading -->
            <div class="col-12">
                <div class="section-heading text-center">
                    <h2>RELATED STORIES</h2>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Single Blog Item -->
            <div class="col-12 col-sm-6 col-lg-4 razo-blog-masonary-item mb-80">
                <div class="razo-blog-masonary-single-item">
                    <!-- Post Thumbnail -->
                    <div class="post-thumbnail">
                        <a href="#"><img src="/TunaMusic/resources/img/bg-img/44.jpg" alt=""></a>
                    </div>
                    <!-- Post Content -->
                    <div class="post-content">
                        <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                        <a href="#" class="post-title">Does our economic model need a re-think?</a>
                        <p>Bill Gates says there's something and fundamentally wrong with our economic model.</p>
                        <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>

            <!-- Single Blog Item -->
            <div class="col-12 col-sm-6 col-lg-4 razo-blog-masonary-item mb-80">
                <div class="razo-blog-masonary-single-item">
                    <!-- Post Thumbnail -->
                    <div class="post-thumbnail">
                        <a href="#"><img src="/TunaMusic/resources/img/bg-img/45.jpg" alt=""></a>
                    </div>
                    <!-- Post Content -->
                    <div class="post-content">
                        <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                        <a href="#" class="post-title">In the medical journal The Lancet, a study out of Seattle which looked at alcohol consumption.</a>
                        <p>Quite a piuece of research. Quote, "The conclusions of the study are clear and unambiguous.</p>
                        <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
            <!-- Single Blog Item -->
            <div class="col-12 col-sm-6 col-lg-4 razo-blog-masonary-item mb-80">
                <div class="razo-blog-masonary-single-item">
                    <!-- Post Thumbnail -->
                    <div class="post-thumbnail">
                        <a href="#"><img src="/TunaMusic/resources/img/bg-img/46.jpg" alt=""></a>
                    </div>
                    <!-- Post Content -->
                    <div class="post-content">
                        <div class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> March 19, 2018</div>
                        <a href="#" class="post-title">The curious case of the stolen diggers of Manukau</a>
                        <p>Mysteriously, more than a dozen diggers have been stolen in Counties Manukau since March.</p>
                        <a href="#" class="btn read-more-btn">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Related News Area End -->

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
</body>

</html>