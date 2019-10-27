<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                                    <li><a href="chart/chartView.do">- Charts</a></li>

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
                            <li><a href="chart/chartView.do">Charts</a></li>
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
                                        <li><a href="mlist.do">- Blog Details</a></li>
                                        <li><a href="./index.jsp">- Home</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="./events.html">Events</a></li>
                            <li><a href="magazine.do">Blog</a></li>
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