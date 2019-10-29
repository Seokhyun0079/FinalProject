<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
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
                        	<div style="margin-bottom: 3px;">
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
	<!-- myPage -->
	<script src="/TunaMusic/resources/js/myPage.js"></script>
	<u:isLogin>
    <script src="/TunaMusic/resources/js/mylist.js"></script>
	</u:isLogin>
        

</body>

</html>