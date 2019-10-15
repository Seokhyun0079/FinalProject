<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Title -->
    <title>TUNA MUSIC | LOG-IN PAGE</title>

    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">
    
    <style type="text/css">
	/*로그아웃, 마이페이지 드롭다운*/
	#user-icon li ul {
			background: rgb(109,109,109);
			display:none;  
			height:auto;
			padding-bottom:10px;
			margin:0px;
			border:0px;
			position:absolute;
			width:120px;
			z-index:200;
		}
		
	#user-icon li:hover ul {
		display:block;   
	}
	</style>
    
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
    
    <!-- Top Login Area Start -->
	<div class="top-search-area">
	    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
	        <div class="modal-dialog modal-dialog-centered" role="document">
	            <div class="modal-content" style="width: 400px; height: 300px; margin-left: 30%; ">
	                <div class="modal-body" style="position: relative; background-color: rgb(25, 25, 25); padding: 10px;">
	                    <h1 style="color: white; padding-left: 23%">TUNA MUSIC</h1>
	                    <form action="login.do" method="post" style="width: 100%; margin-top: 15px;">
	                        <input type="text" name="userId" style="width: 80%; margin-left: 40px; margin-bottom: 8px" placeholder="ID">
	                        <input type="password" name="userPwd" style="width: 80%; margin-left: 40px;" placeholder="PW">
	                        <input type="submit" value="LOGIN" style="cursor:pointer; color: rgb(221, 35, 121);font-weight: bold; font-family:sans-serif; font-style:normal; background-color:transparent;  margin-top: 15px; font-size: 35px; box-shadow: 0px 0px 0px 0px;">
	                        <div style="float: right;">
	                            <div style="color:gray; width: 100%;"><a href="#" style="color:gray;">FORGOT PW?</a></div>
	                            <div style="color:gray; width: 100%;"><a href="/TunaMusic/member/memberJoinView.do" style="color:gray; float: right;" >SIGN-UP</a></div>
	                        </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- Top Login Area End -->

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
                    	<a class="nav-brand" href="/TunaMusic/index.jsp"><img src="/TunaMusic/resources/img/core-img/logo.png" alt=""></a>

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
                                
                                <!-- Login Icon -->
	                            <c:choose>
							        <c:when test="${empty loginUser }">
			                            <div class="search-icon" data-toggle="modal" data-target="#loginModal">
			                                <i class="fa fa-sign-in"></i>
			                            </div>
							        </c:when>
						       		<c:otherwise>
			                            <div class="search-icon" id="user-icon" OnClick="location.href ='/TunaMusic/member/logout.do'" style="cursor:pointer;">
			                                <ul>
			                                	<li><i class="fa fa-user"></i>
			                                		<ul>
			                                			<li><a href="#">&nbsp&nbspMY PAGE</a></li><br>
											            <li><a href="#">&nbsp&nbspLOG-OUT</a></li><br>
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
    </header>
    <!-- Header Area End -->
    <br><br><br><br><br><br>
    <h1 align="center">TUNA MUSIC</h1>
    <form action="login.do" method="post" align="center" style="width: 100%; margin-top: 35px; margin-bottom: 180px">
        <input type="text" name="userId" placeholder="ID" style="width: 20%; height: 50px; padding-left: 10px; font-size: 20pt"><BR>
        <input type="password" name="userPwd" placeholder="PW" style="width: 20%; height: 50px; padding-left: 10px; font-size: 20pt"><BR>
        <br>
        <h6 style="color: gray;">&nbsp아이디와 비밀번호가 일치하지 않습니다.</h6>
        <input type="submit" value="LOGIN" style="cursor:pointer; font-weight: bold ;border:none;background-color: white; color: rgb(221, 35, 121); padding-left: 10px;padding-right: 10px; font-size: 35px; box-shadow: 0px 0px 0px 0px; margin-top: 25px; margin-bottom: 25px;">
        <br>
        <div>
            <div style="color:gray; width: 100%;"><a href="#" style="color:gray;">FORGOT PW?</a></div>
            <div style="color:gray; width: 100%;"><a href="/TunaMusic/member/memberJoinView.do" style="color:gray;" >SIGN-UP</a></div><br>
        </div>
    </form>
	
	<footer style="margin-bottom: 0;">
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