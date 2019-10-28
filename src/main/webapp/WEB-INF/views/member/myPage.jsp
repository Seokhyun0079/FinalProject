<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>TUNA MUSIC | MY PAGE</title>
    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">
	<!-- Font Awesome 4 -->
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->

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
                                    <i class="fa fa-music"></i>
                                </div>

                                <!-- Search Icon -->
                                <div class="search-icon" data-toggle="modal" data-target="#searchModal">
                                    <i class="fa fa-search"></i>
                                </div>
                                
                                <!-- Login Icon -->
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
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->

    <!-- 마이페이지 INFO -->
    <section class="single-music-charts-details bg-overlay bg-img section-padding-80-0 jarallax" style="background-image: url(/TunaMusic/resources/img/bg-img/54.jpg);">
        <div class="container">
            <div class="row align-items-center">
                <!-- Profile IMG -->
                <div class="col-12 col-md-6">
                    <div class="chart-details-thumbnail mb-80">
                        <img style="width: 300px; margin-left: 15%" src="/TunaMusic/resources/uploadFiles/${loginUser.profileIMG}" alt="">
                    </div>
                </div>
                <!-- Content -->
                <div class="col-12 col-md-6">
                    <div class="chart-details-content mb-80">
                        <h2>${loginUser.nickName}'S PAGE</h2>
                        <p>FROM ${loginUser.enrolldate}</p>
                        <c:set var="grade" value="${loginUser.grade}"/>
                        <c:choose>
                        	
                        	<c:when test="${grade eq 'C'}">
		                        <p style="color: silver;">You are a free member. Service is limited.</p>
                        	</c:when>
                        	<c:when test="${grade eq 'B'}">
		                        <p style="color: gold;">You are a paid member. You can use various services such as listening to music and downloading.</p>
                        	</c:when>
                        	<c:when test="${grade eq 'A'}">
		                        <p style="color: red;">You are a admin</p>
                        	</c:when>
                        	
                        </c:choose>
                        <div class="app-download-btn" style="width: 400px; height: 100px;">
                        	<div style="margin-bottom: 4px;">
	                            <span style="width: 150px" onclick="fnMove('my-music')" class="btn razo-btn btn-2" data-animation="fadeInUpBig" data-delay="700ms">MY MUSIC</span>
	                            <span style="width: 150px; padding-left: 20px;" onclick="fnMove('fav-music')" class="btn razo-btn btn-2" data-animation="fadeInUpBig" data-delay="700ms">FAVORITE MUSIC</span>
                        	</div>
                        	<div>
	                            <span style="width: 150px" onclick="fnMove('my-funding')" class="btn razo-btn btn-2" data-animation="fadeInUpBig" data-delay="700ms">MY FUNDING</span>
	                            <span style="width: 150px" onclick="fnMove('paylist')" class="btn razo-btn btn-2" data-animation="fadeInUpBig" data-delay="700ms">PAYLIST</span>
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 마이페이지 INFO End -->

    <!-- 업로드뮤직 -->
    <section class="razo-music-charts-area section-padding-80" id="my-music">
        <div class="container">
                <div class="row">
                    <!-- Section Heading -->
                    <div class="col-sm-6">
                        <div class="#section-heading" style="padding-left: 5%">
                            <h2>MY MUSIC</h2>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                <ul class="lists" id = "myUplMusic">
                    
                </ul>
                </div>
         </div>
    </section>
    <!-- 업로드 뮤직 END -->

    <!-- 선호 뮤직 -->
    <section class="razo-music-charts-area section-padding-80" id="fav-music">
        <div class="container">
                <div class="row">
                    <!-- Section Heading -->
                    <div class="col-sm-6">
                        <div class="#section-heading" style="padding-left: 5%">
                            <h2>FAVORITE MUSIC</h2>
                        </div>
                    </div>
                    <div class="col-sm-6" >
                        <div class="show-all-button mb-50 text-right">
                                <a href="javascript:Alldel();" class="btn razo-btn mt-30" style="margin-top:0px; margin-right: 45px; background-color: black ; color: white">DELETE ALL</a>
                        </div>
                    </div>                      
                </div>
                <div class="col-12">
                <ul class="lists" id = "myFavMusic">
                    
                </ul>
                </div>
        </div>
    </section>
    <!-- 선호 뮤직 END -->

    <!-- 내가 올린 펀딩 -->
    <section class="razo-music-charts-area section-padding-80" id="my-funding">
        <div class="container">
                <div class="row">
                    <!-- Section Heading -->
                    <div class="col-sm-6">
                        <div class="#section-heading" style="padding-left: 5%">
                            <h2>MY FUNDING</h2>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                <ul class="lists" id = "myFunding">
                    
                </ul>
                </div>
        </div>
    </section>
    <!-- 내가 올린 펀딩 END -->
 
    <!-- 결제 내역 -->
    <section class="razo-music-charts-area section-padding-80" id="paylist">
        <div class="container">
                <div class="row">
                    <!-- Section Heading -->
                    <div class="col-sm-6">
                        <div class="#section-heading" style="padding-left: 5%">
                            <h2>PAY LIST</h2>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                <ul class="lists" id = "payList">
                    
                </ul>
                </div>
        </div>
    </section>
    <!-- 결제 내역 END -->
        
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
    
    <script>
  		//-UPL_MUISC_LIST 	
  		$(function(){
	    	$.ajax({
	    		url: "/TunaMusic/musicBoard/article/myList.do",
	    		type: "GET",
	    		data: {},
	    		success: function(data){
	    			for(var i = 0; i < data.result.length; i++){
	    				$("#myUplMusic").append('<li class="lists__item">'+
	    						'<div class="single-music-chart style-2 d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="100ms">'+
	    						'<div class="music-content d-flex align-items-center">'+
	    						'<div class="sl-number"><h5>●</h5></div><div class="music-thumb">'+
	    						'<img src="/TunaMusic/resources/albumImageUpload/'+data.result[i].albumFile+'" alt=""></div>'+
	    						'<div class="audio-player"><div class="audioplayer"><audio preload="auto" controls="" style="width: 0px; height: 0px; visibility: hidden;">'+
	                            '<source src=""></audio><div class="audioplayer-playpause" title=""><a href="/TunaMusic/musicBoard/article/read.do?articleNo='+data.result[i].articleNo+'"></a></div><div class="audioplayer-volume"><div class="audioplayer-volume-button" title=""></div><div class="audioplayer-volume-adjust"><div><div style="width: 100%;"></div></div></div></div></div></div>'+
	    						'<div class="music-title"><h5>'+data.result[i].title+' - <span>'+data.result[i].nickName+'</span></h5>'+
	    						'</div></div><div class="music-price"><div onclick="uplDel()" style="cursor: pointer;" id="'+data.result[i].articleNo+'" class="remove-btn razo-btn">DELETE</a></div></div></li>');
	    			}
	    		}	    	
	    		});
	    });
  		
	  	//-UPL_MUISC_DELETE	
		function uplDel(){
   			var articleNo = $(event.target).attr("id");
   			$.ajax({
	            url : "/TunaMusic/musicBoard/article/mydelete.do",
	            type : "GET",
	            data : {
	                "articleNo" : articleNo
	            	},
	            success :
	             	$("#"+articleNo).parent().parent().remove() 
	            })
			
   		}
	  	
  		//-FAV_MUISC_LIST
	    $(function(){
	    	$.ajax({
	    		url: "/TunaMusic/myMusic/list.do",
	    		type: "GET",
	    		data: {},
	    		success: function(data){
	    			for(var i = 0; i < data.result.length; i++){
	    				$("#myFavMusic").append('<li class="lists__item">'+
	    						'<div class="single-music-chart style-2 d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="100ms">'+
	    						'<div class="music-content d-flex align-items-center">'+
	    						'<div class="sl-number"><h5>●</h5></div><div class="music-thumb">'+
	    						'<img src="/TunaMusic/resources/albumImageUpload/'+data.result[i].albumFile+'" alt=""></div>'+
	    						'<div class="audio-player"><div class="audioplayer"><audio preload="auto" controls="" style="width: 0px; height: 0px; visibility: hidden;">'+
	                            '<source src=""></audio><div class="audioplayer-playpause" title=""><a href="/TunaMusic/musicBoard/article/read.do?articleNo='+data.result[i].articleNo+'"></a></a></div><div class="audioplayer-bar"><div class="audioplayer-bar-loaded"></div><div class="audioplayer-bar-played"></div></div><div class="audioplayer-time audioplayer-time-duration">…</div><div class="audioplayer-volume"><div class="audioplayer-volume-button" title=""><a href="#"></a></div><div class="audioplayer-volume-adjust"><div><div style="width: 100%;"></div></div></div></div></div></div>'+
	    						'<div class="music-title"><h5>'+data.result[i].title+' - <span>'+data.result[i].nickName+'</span></h5>'+
	    						'</div></div><div class="music-price"><div onclick="del()" style="cursor: pointer;" id="'+data.result[i].articleNo+'" class="remove-btn razo-btn">DELETE</a></div></div></li>');
	    			}
	    		}	    	
	    		});
	    });
  		
	  	//-FAV_MUISC_DELETE
		function del(){
   			var articleNo = $(event.target).attr("id");
   			$.ajax({
	            url : "/TunaMusic/myMusic/remove.do",
	            type : "GET",
	            data : {
	                "articleNo" : articleNo
	            	},
	            success :
	             	$("#"+articleNo).parent().parent().remove() 
	            })
			
   		}
	  	
		//-FAV_MUISC_DELETEALL
		function Alldel(){
   			$.ajax({
	            url : "/TunaMusic/myMusic/deleteAll.do",
	            type : "GET",
	            data : {
	            },
	            success :
	             	$("#myFavMusic").remove()
	            })
			
   		}
   		
    
    	// 스크롤 이동
        function fnMove(pagePart){
            var offset = $("#" + pagePart).offset();
            $('html, body').animate({scrollTop : offset.top}, 400);
        }
        
        
        
    </script>

</body>

</html>