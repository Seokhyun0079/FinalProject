<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title> TUNA MUSIC | QnA Board </title>

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
<!-- Header Area End -->

<!-- Social Share Area Start -->
<div id = "my-list-div" class="razo-social-share-area" style="width : 20%; color : white; background: #5a6268; opacity: 0;">
    <br>my List<br><br>
    <audio id="my-list-player" controls="controls">
        <source src="/TunaMusic/resources/upload/${article.fileName}" type="audio/mp3" />
    </audio>
    <div > 여기 클릭</div>
</div>
<!-- Social Share Area End -->

<!-- Podcast Thumbnail Area Start -->
<section class="blog-details-post-thumbnail-area bg-overlay bg-img jarallax" style="background-image: url(/TunaMusic/resources/img/bg-img/53.jpg);">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12">
                <div class="post-title-text">
                    <h2>Tuna Music Q&A Board</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Podcast Thumbnail Area End -->

<!-- Blog Details Area Start -->
<section class="blog-details-area section-padding-80">
    <div class="container">
        <!-- Post Details Text -->
        <div class="post-details-text">
            <div class="row justify-content-center">
                <div class="col-12 col-sm-2 col-xl-1">
                    <!-- Post Share -->
<!--                     <div class="razo-author-avatar">
                        <img src="/TunaMusic/resources/img/bg-img/70.jpg" alt="">
                        <h6>John Milley</h6>
                    </div> -->
                </div>

                <div class="col-12 col-sm-10 col-xl-9">
                    <h3>${article.title}</h3>
                    <p><fmt:formatDate value="${article.date}" pattern="yyyy-MM-dd"/></p>

                    <c:if test="${article.fileName != 'null'}">
                    <img src="/TunaMusic/resources/upload/${article.fileName}" width="500" height="300"/>
                    </c:if>
                    <h5>${article.text}</h5>
<%--                     <div><h5>Best</h5><br><h5 id="best">${article.best}</h5></div>
                    <div><h5>Bad</h5><br><h5 id="bad">${article.bad}</h5></div> --%>
                    <div class="razo-next-prev-pager mb-80 d-flex align-items-center justify-content-between">
                        <div class="prev-pager">
                            <a href="/TunaMusic/qnaBoard/article/read.do?articleNo=${article.prev}"><span>Previous</span>
                                <h6><i class="fa fa-long-arrow-left" aria-hidden="true"></i> 이전글 보러가기</h6>
                            </a>
                        </div>
                        <div class="next-pager text-right">
                            <a href="/TunaMusic/qnaBoard/article/read.do?articleNo=${article.next}"><span>Next</span>
                                <h6>다음 글 보러가기 <i class="fa fa-long-arrow-right" aria-hidden="true"></i></h6>
                            </a>
                        </div>
                    </div>
                    <div class="comment_area mb-50 clearfix">
                        <h5 class="title">${article.commentCount} 개의 댓글</h5>

                        <ol id="comment-list">
                            <!-- Single Comment Area -->
                            <!-- Single Comment Area -->
                        </ol>
                    </div>
                    <!-- Leave A Reply -->
                    <div class="razo-contact-form">
                        <h2 class="mb-4" id="point">댓글을 남겨주세요.</h2>
                        <!-- Form -->
                            <div class="row">
                                <div class="col-12">
                                    <textarea id="message" name="message" class="form-control mb-30" placeholder="Comment"></textarea>
                                </div>
                                <div class="col-12">
                                    <button id ="comment-buutton" type="submit" class="btn razo-btn btn-3 mt-15">댓글 쓰기</button>
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
<script src="/TunaMusic/resources/js/qnacomment.js"></script>
<u:isLogin>
    <script src="/TunaMusic/resources/js/mylist.js"></script>
</u:isLogin>
<script>
    var zeroTenFive = -0.5;
    var opacity = 0.5;
    var playingIndex = 0;
    $(function () {
            $("#list-button").click(function(){
                $('#my-list-div').css('opacity', opacity);
                opacity += zeroTenFive;
                zeroTenFive *= -1;
            });
    });
    function myListClickEvent(fileName, index, length){

        $("#"+playingIndex).css('font-size', 14);
        $("#"+index).css('font-size', 20);
        playingIndex = index;
        $('#my-list-player').attr('src', '/TunaMusic/resources/upload/'+fileName);
        document.getElementById('my-list-player').play();
        $("#my-list-player").on('ended', function(){
            $('#'+(playingIndex+1 == length ? 0 : playingIndex+1)).trigger('click');
        });
    }
</script>



<!-- <script src="/TunaMusic/resources/js/musicboard-read.js"></script> -->
</body>
</html>