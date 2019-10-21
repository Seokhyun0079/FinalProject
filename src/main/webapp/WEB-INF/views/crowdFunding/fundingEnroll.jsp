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
    <div class="container" style="margin-top: 50px">
        <div class="row">
            <div class="col-12">
                <div class="section-heading text-center" style="padding: 30px 30px 0px 0px">
                    <div class="d-flex justify-content-center">
                        <div class="form-group" style="margin: 0px;">
                            <h6>프로젝트명</h6>
                            <textarea class="form-group" rows="1" cols="30" id="project-name" name="project-name" style="font-size: 32px;" placeholder="프로젝트명을 알려주세요"></textarea>
                            <br>
                            <h6>팀명</h6>
                            <textarea class="form-group" rows="1" cols="30" name="project-creatorName" style="font-size: 16px" placeholder="창작자 여러분의 팀명을 알려주세요"></textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="razo-blog-masonary">
            <div class="row razo-blog-masonary-item">
                <div class="col-8">
                    <img src="/TunaMusic/resources/img/etc-img/noimage.png" alt="" class="img-responsive">
                    <%--<img src="./img/tunamusuc_funding_banner.png" alt="">--%>
                </div>
                <div class="col-4">
                    <h6>목표 금액</h6>
                    <textarea class="form-group" rows="1" cols="20" id="goal" name="goal" style="font-size: 24px;" placeholder="목표금액을 입력해주세요."></textarea>
                    <br><br>

                    <h6>마감 기한</h6>
                    <textarea class="form-group" rows="1" cols="20" id="goal" name="goal" style="font-size: 24px;" placeholder="마감 기한을 입력해주세요."></textarea>
                    <br><br>

                    <h6>썸네일 이미지</h6>
                    <input type="file" name="funding_thumbnail">
                    <%--<span>후원자</span><br>--%>
                    <%--<h2 style="display: inline-block">100</h2>&nbsp;<span>명</span><br><br>--%>

                </div>
            </div>
        </div>
    </div>
    <hr>

    <div class="container">
        <div class="row razo-blog-masonary">
            <!-- <div class="row razo-blog-masonary-item"> -->
            <div class="col-12">
                <h6>창작자 소개</h6>
                <div contenteditable="true">
                    <form action="/submit" method="post" id="frm1">
                        <textarea name="ir2" id="ir2" rows="3" cols="100">창작자 여러분을 소개해주세요.</textarea>
                    </form>
                </div>
                <br>
                <h6>프로젝트 스토리</h6>
                <div contenteditable="true">
                    <form action="/submit" method="post" id="frm">
                        <textarea name="ir1" id="ir1" rows="10" cols="100"></textarea>
                    </form>
                </div>
                <br>
                <input type="button" class="btn razo-btn" id="writebtn" value="저장" />
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
<!-- Smart Editor required -->
<%--<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>--%>
<script type="text/javascript" src="/TunaMusic/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
</body>
<script type="text/javascript">
    var oEditors = [];
    nhn.husky.EZCreator.createInIFrame({
        oAppRef:oEditors,
        elPlaceHolder:"ir1",
        sSkinURI:"/TunaMusic/resources/editor/SmartEditor2Skin.html",
        // fCreator:"createSEditor2"
        htParams:{
            bUseToolbar:true,
            bUseVerticalResizer:false,
            bUseModeChanger:true,
            fOnBeforeUnload:function() {
                alert("성공!");
            }
        },
        fOnAppLoad:function () {
            oEditors.getById["ir1"].exec("PASTE_HTML", ["여러분의 멋진 프로젝트 스토리를 들려주세요."]);
        },
        fCreator:"createSEditor2"
    });
</script>
<script type="text/javascript">
    // 스마트에디터 적용, 반드시 textarea보다 밑에 명시되어 있어야함(오류발생), sSkinURI 경로 조심할것
    window.onload = function () {
        // 버튼누를 때 실행
        var btn = document.getElementById("writebtn");

        // 저장버튼을 누르면 submitContents함수 실행
        btn.onclick = function() {
            submitContents(btn);
        }
    }
    // '저장' 버튼을 누르는 등 저장을 위한 얙션을 했을 때 submitContents가 호출된다고 가정
    function submitContents(elClickedObj) {
        // 에디터의 내용이 textarea에 적용됨
        oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
        //스마트에디터(iframe)의 내용을 textarea로 전달

        // 에디터의 내용에 대한 값 검증은 이곳에서
        // document.getElementById("ir1").value를 이용해서 처리한다.

        try {
            // 해당 오브젝트가 위치한 form이 submit된다.
            elClickedObj.form.submit();
        }catch (e) {

        }

        // submitContents함수는 파라미터 elClickObj가 포함되어있는 form태그를 submit시킨다.
        // submit될 때 textarea의 값을 같이 가져간다.

    }
</script>
</html>