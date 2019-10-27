<%--
  Created by IntelliJ IDEA.
  User: Yeji
  Date: 2019-10-10
  Time: 오후 12:14
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

    <!-- Smart Editor required -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="/TunaMusic/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>
<!-- Preloader -->
<!--
<div id="preloader">
    <div>
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
        <span>Wait, please...</span>
    </div>
</div>
 -->
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
    <form action="/TunaMusic/crowdFunding/insertFunding.do" method="post" enctype="multipart/form-data">
        <div class="container" style="margin-top: 50px">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center">
                        <%--style="padding: 30px 30px 0px 0px"--%>
                        <div class="d-flex justify-content-center">
                            <div class="form-group" style="margin: 0px;">
                                <h6>프로젝트명</h6>
                                <input type="text" class="form-control" id="ftitle" name="ftitle" style="font-size: 24px; text-align: center" placeholder="프로젝트명을 입력해주세요">
                                <br>
                                <h6>팀명</h6>
                                <input type="text" class="form-control" id="fcreator" name="fcreator" style="font-size: 16px; text-align: center" placeholder="창작자 여러분의 팀명을 입력해주세요">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="razo-blog-masonary">
                <div class="row razo-blog-masonary-item">
                    <div style="width: 730px; height: 486px; padding: 15px; overflow: hidden; text-align: center; ">
                        <img src="/TunaMusic/resources/img/etc-img/noimage.png" alt="" style="width: 730px; height: auto;">
                        <!-- <img src="./img/tunamusuc_funding_banner.png" alt=""> -->
                    </div>
                    <div style="width: 350px; height: 486px; padding: 15px;">
                        <h6>목표 금액</h6>
                        <input type="number" id="fgoal" name="fgoal" class="form-control">
                        <br>

                        <h6>프로젝트 마감일</h6>
                        <input type="date" id="endDate" name="endDate" class="form-control">
                        <br>

                        <h6>썸네일 이미지</h6>
                        <input type="file" id="fuploadFile" name="fuploadFile">
                        <br><br>

                        <h6>후원 리워드</h6>
                        <input type="button" class="razo razo-btn" onclick="rewardPopup();" value="추가하기">
                        <br>

                        <input type="hidden" name="fno" id="fno" value="0">
                        <input type="hidden" name="fbacker" id="fbacker" value="0">
                        <input type="hidden" name="famount" id="famount" value="0">
                    </div>
                </div>
            </div>
        </div>
        <hr>

        <div class="container" style="margin-top: 30px">
            <div class="row razo-blog-masonary">
                <!-- <div class="row razo-blog-masonary-item"> -->
                <div class="col-12">
                    <h6>창작자 소개</h6>
                    <textarea name="fcreatorInfo" rows="3" cols="100" placeholder="창작자 여러분을 소개해주세요"></textarea>
                    <br><br>
                    <h6>프로젝트 스토리</h6>
                    <textarea name="fcontent" id="fcontent" rows="10" cols="100"></textarea>
                    <%--placeholder="여러분의 멋진 프로젝트 스토리를 들려주세요"--%>
                    <input type="submit" class="razo razo-btn" id="writebtn" name="writebtn" value="저장">
                </div>
                <!-- </div> -->
            </div>
        </div>
    </form>
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
<%--<script src="/TunaMusic/resources/js/default-assets/active.js"></script>--%>

<script>
    function rewardPopup() {
        var url = "/TunaMusic/crowdFunding/insertReward.do";
        var name = "reward_popup";
        var option = "width = 500, height = 500, top = 100, left = 200";
        window.open(url, name, option);
    }
</script>
<script type="text/javascript">
    //전역변수
    var oEditors = [];

    //스마트에디터 프레임생성
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "fcontent",
        sSkinURI: "/TunaMusic/resources/editor/SmartEditor2Skin.html",
        htParams:{
            bUseToolbar:true,
            bUseVerticalResizer:true,
            bUseModeChanger:true,
            fOnBeforeUnload: function () {
                alert("Success!!");
            },
        },
        fOnAppLoad:function(){
            oEditors.getById["fcontent"].exec("PASTE_HTML", ["여러분의 멋진 프로젝트 스토리를 들려주세요"])
        },
        fCreator:"createSEditor2"
    });
</script>
<script>
    window.onload = function () {
        var btn = document.getElementById("writebtn");
        console.log(btn.form);
        btn.onclick = function () {
            submitContents(btn);
        }
    }
    function submitContents(clickedObj) {
        oEditors.getById["fcontent"].exec("UPDATE_CONTENTS_FIELD", []);

        try{
            clickedObj.form.submit();
        }catch(e) {
            console.log(e);
        }
    }
</script>
</body>
</html>