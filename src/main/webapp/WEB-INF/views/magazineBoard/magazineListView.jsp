<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- Title -->
    <title>TUNA MUSIC - MAGAZINE</title>
    
    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">
    <style>
     a:hover{text-decoration: underline;}

        

    </style>
 
</head>
<body>

 <!-- 페이지 로드 -->
<!--     <div id="preloader">
        <div>
            <div class="spinner">
                <div class="double-bounce1"></div>
                <div class="double-bounce2"></div>
            </div>
            <span>Wait, please...</span>
        </div>
    </div> -->
    <!-- /페이지 로드-->

<!----------------------------------------------------------------------------------------------------- *헤더  시작 -->
    <!-- Top Search Area Start -->
    <div class="top-search-area">
        <div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <!-- Close Button -->
                        <button type="button" class="btn close-btn" data-dismiss="modal"><i class="fa fa-times"></i></button>
                        <!-- Form -->
                        <form action="index.jsp" method="post">
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
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->
<!----------------------------------------------------------------------------------------------------- *헤더  끝-->

   

    <!-- *게시판 (글목록, 페이지까지)-->
<section class="uza-news-area section-padding-80">
    <div class="container">
        <div class="row">
        
        
            
            
            
        <!-- *소제목 -->
        <div class="col-12">
            <div class="section-heading text-center">
                <h1> MUSIC MAGAZINE</h1><br>
                	
                	<c:if test="${loginUser.userId eq 'admin' }"><!-- 멤버컨트롤에서 리스트 받아옴 -->
                	 	<button class="btn razo-btn btn-3 mt-15" style="float: right; background-color: black;" onclick="location.href='minsertView.do';">Post</button> <!-- 게시글 작성 버튼 -->                       
            		</c:if> 
            			<br><br>

            </div>
        </div>
             
        
                
                
                 <!-- * 게시글 시작-->
             	
               
			<div class="col-12">
			<h5 style="float: left;">total : ${pi.listCount}</h5>  <br>
            <br>  
		
			<c:forEach var="m" items="${list}" >
           		<div class="single-razo-event-area d-flex flex-wrap align-items-center mb-50 wow fadeInUp" data-wow-delay="300ms" ><!-- *마우스모션?css -->
				
				<!-- 	<table >*테이블 처리 
                		<tr >*테이블 행(가로)
                
                           	<td><img src="/TunaMusic/resources/img/bg-img/65.jpg" alt="" width="100%"></td> *테이블 첫번재 열(세로), 사진

                        *테이블 두번재 열(세로), 설명
                        	 <td>
                        			<div class="event-content d-flex align-items-center">
                            		<div class="event-text">
                                		<a href="#"><h3>Tuna music magazine  board opne~<h3></a>			 *제목
                                			<div class="event-meta">
                                    			<a class="event-date"><i class="icon_calendar"></i> March 11, 2018</a> 	*날짜
                                    			<a class="event-address"><i class="icon_pin_alt"></i>3.6k</a>				*조회수
                                			</div>                          
	                         		</div>     
                            		</div>
        
							 </td>
	                  </tr>
                    </table> --> <!-- *테이블 -->
              
                 
				
							<div  style="border: 1px float: left; width: 50%;">
                           		<img src="/TunaMusic/resources/img/bg-img/65.jpg" alt="" width="100%" > <!-- *왼쪽(사진) -->
							</div>
							
                       
                        	 <div  style="border: 1px float: right; width: 50%;"> <!-- *오른쪽 -->
                        		<div class="event-content d-flex align-items-center">
                            		<div class="event-text">
                                		
                                		<c:url var="mdetail" value="mdetaile.do"><!-- mdetaile.do?mseq=10&page=2 -->
										<c:param name="mseq" value="${ m.mseq }"/>
										<c:param name="page" value="${ pi.currentPage }"/>
										</c:url> <!-- 어떤 url 걸어둘껀지 -->
										
							
                                		<a href="${ mdetail }"><h3>${m.mtitle}</h3></a><!-- *제목 -->
        
                                		<div class="event-meta">
                                    		<a class="event-date">${m.createdate}</a><!-- *날짜 -->
                                    		
                                    		
                                    		<a class="event-address">view ${m.mcount}</a>				<!-- *조회수 -->
                                    		<br>
                                    		 
    
                                    		<a  href="${ mdetail }" class="btn read-more-btn" style="float:left;">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                		</div>                          
	                         		</div>     
                            	</div>  
                			</div> 
		                     
                </div>
                </c:forEach>
                

            

            	<!--* 페이징 처리   -->
                <div class="col-12 text-center" style="width: 100%;">
                   
                    <!-- [이전] -->
				<c:if test="${ pi.currentPage <= 1 }">
					[이전] &nbsp;
				</c:if> <!-- 1페이지보다 작으면 이전글자 없어짐 -->
				<c:if test="${ pi.currentPage > 1 }">
					<c:url var="before" value="magazine.do"><!-- 1페이지보다 크면 이전이라는 글자 생김 -->
						<c:param name="page" value="${ pi.currentPage - 1 }"/>
					</c:url>
					<a href="${ before }">[이전]</a> &nbsp;
				</c:if><!-- [이전] 누르면 이전페이지로 가는거 -->
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
						<font color="pink" size="4"><b>[${ p }]</b></font>
					</c:if><!-- 선택된페이지 표시 -->
					
					<c:if test="${ p ne pi.currentPage }">
						<c:url var="pagination" value="magazine.do">
							<c:param name="page" value="${ p }"/>
						</c:url>
						<a href="${ pagination }">${ p }</a> &nbsp;
					</c:if> <!-- 페이지가 넘어갈수있게끔 만든거 -->
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage >= pi.maxPage }">
					[다음]
				</c:if> 
				<c:if test="${ pi.currentPage < pi.maxPage }">
					<c:url var="after" value="magazine.do">
						<c:param name="page" value="${ pi.currentPage + 1 }"/>
					</c:url> 
					<a href="${ after }">[다음]</a>
				</c:if>
			
               
                   
                    
                </div>

<!-- 				<div class="col-12 text-center" >
                    <a href="#" class="btn razo-btn mt-30" style="float: right; background-color: purple;">Post</a>
                </div> -->
                
                   

            </div>    

    	</div>
    </div>
</section>
    <!-- *게시글 끝 -->
    
    
    
    

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
   <!--  <script src="./resources/js/jquery.min.js"></script> -->

    <!-- Popper -->
     <script src="/TunaMusic/resources/js/popper.min.js"></script> 
  <!--   <script src="./resources/js/popper.min.js"></script> -->
    <!-- Bootstrap -->
    <script src="/TunaMusic/resources/js/bootstrap.min.js"></script>
   <!--  <script src="./resources/js/bootstrap.min.js"></script> -->
    <!-- All Plugins -->
    <script src="/TunaMusic/resources/js/razo.bundle.js"></script> 
    <!-- <script src="./resources/js/razo.bundle.js"></script> -->
    <!-- Active -->
     <script src="/TunaMusic/resources/js/default-assets/active.js"></script> 
    <!-- <script src="./resources/js/default-assets/active.js"></script> -->



</body>
</html>