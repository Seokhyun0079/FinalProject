<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                                    <li><a href="/TunaMusic/payment.do">-Membership Purchase</a></li>
                                </ul>
                            </li>
                            <li><a href="/TunaMusic/chart/chartView.do">Charts</a></li>
                            <li><a href="/TunaMusic/musicBoard/article/list.do">MusicBoard</a></li>
                            <li><a href="/TunaMusic/myMusicShareBoard/article/list.do">My Music Share Board</a></li>
                            <li><a href="/TunaMusic/magazine.do">Magazine</a></li>
                            <li><a href="/TunaMusic/qnaBoard/article/list.do">Q & A</a>
                            <ul class="dropdown">
                            	<li><a href="/TunaMusic/qnaBoard/article/list.do">- list</a></li>
                            	<li><a href="/TunaMusic/qnaBoard/article/write.do">- write</a></li>
                            </ul></li>
                        </ul>

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