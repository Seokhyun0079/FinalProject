<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
    
<!DOCTYPE html>
<html >
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


    <!-- *게시판 (글목록, 페이지까지)-->
<section class="uza-news-area section-padding-80">
    <div class="container">
        <div class="row">
        
        
            
            
            
        <!-- *소제목 -->
        <div class="col-12">
            <div class="section-heading text-center">
                <h1> MUSIC MAGAZINE</h1><br>
             </div>
         </div>
               
		<!---------------------------------------------------검색창  -->
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="razo-contact-form" style="margin:auto; ">
                        
                        
                        
                        <form action="msearch.do" class="search-form">
                            <div class="row align-items-end" >
                              
                               
                                <div class="col-sm-6 col-lg-9">
                                    <div class="form-group">
                                        <input type="search" class="form-control" id="keyword" name="keyword"  placeholder="" style="color: black; font-weight: bold; font-size: large;">
                                    </div>
                                </div>
                                
                                
                                <div class="col-sm-6 col-lg-3">
                                    <div class="form-group text-right">
                                        <button type="submit" class="btn razo-btn w-100" style="background-color: black">Search</button>
                                    </div>
                                </div>
                                
                                
                            </div>
                        </form>
                        
                        
                    </div>
                </div>
            </div>
        </div>
        <!---------------------------------------------------검색창  -->
        
    </div>
               
               
               
               
               <!----------------------post버튼  --> 
                <div class="col-12"> <!-- 가운데 정렬 -->
                	<c:if test="${loginUser.grade eq 'A'}"><!-- 멤버컨트롤에서 리스트 받아옴 -->
                	 	<button class="btn razo-btn btn-3 mt-15" style="float: right;" onclick="location.href='minsertView.do';">Post</button> <!-- 게시글 작성 버튼 -->                       
            		</c:if> 
       			</div>
       			
<br><br><br>
        
        

                
                
                 <!-- * 게시글 시작-->
             	
               
			<div class="col-12">
			<h4 style="float: left;">total : ${pi.listCount}</h4>  <br>
            <br>  
            <br>
		
			<c:forEach var="m" items="${list}" >
           		<div class="single-razo-event-area d-flex flex-wrap align-items-center mb-50 wow fadeInUp" data-wow-delay="300ms" ><!-- *마우스모션?css -->

							<div  style="border: 1px float: left; width:50%;">
                           		<img src="/TunaMusic/resources/editor/mphotoUpload/${m.thumbnail}" alt="" width="100%" style="height:280px" > <!-- *왼쪽(사진) -->
							</div>
							
                       
                        	 <div  style="border: 1px float: right; width: 50%;"> <!-- *오른쪽 -->
                        		<div class="event-content d-flex align-items-center">
                            		<div class="event-text">
                                		
                                		<c:url var="mdetail" value="mdetaile.do"><!-- mdetaile.do?mseq=10&page=2 -->
										<c:param name="mseq" value="${ m.mseq }"/>
										<c:param name="page" value="${ pi.currentPage }"/>
										</c:url> <!-- 어떤 url 걸어둘껀지 -->
										
							
                                		<a href="${ mdetail }"><h2 style="font-weight:600;">${m.mtitle}</h2></a><!-- *제목 -->
        								<hr>
                                		<div class="event-meta">
                                    		<a class="event-date">${m.createdate}</a><!-- *날짜 -->
                                    		
                                    		
                                    		<a class="event-address" >view ${m.mcount}</a>				<!-- *조회수 -->
                                    		<br>
                                    		 
    
                                    		<a  href="${ mdetail }" class="btn read-more-btn" style="float:left; color:grqy;">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                		</div>                          
	                         		</div>     
                            	</div>  
                			</div> 
		                     
                </div>
                </c:forEach>
                

            <br>

            	<!--* 페이징 처리   -->
                <div class="col-12 text-center" style="width:100%; font-weight:bold; font-size: medium;">
                   
                    <!-- [이전] -->
				<c:if test="${ pi.currentPage <= 1 }">
					[before] &nbsp;
				</c:if> <!-- 1페이지보다 작으면 이전글자 없어짐 -->
				<c:if test="${ pi.currentPage > 1 }">
					<c:url var="before" value="magazine.do"><!-- 1페이지보다 크면 이전이라는 글자 생김 -->
						<c:param name="page" value="${ pi.currentPage - 1 }"/>
					</c:url>
					<a href="${ before }" style="font-weight:bold;">[before]</a> &nbsp;
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
						<a href="${ pagination }" style="font-weight:bold;">${ p }</a> &nbsp;
					</c:if> <!-- 페이지가 넘어갈수있게끔 만든거 -->
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage >= pi.maxPage }">
					[next]
				</c:if> 
				<c:if test="${ pi.currentPage < pi.maxPage }">
					<c:url var="after" value="magazine.do">
						<c:param name="page" value="${ pi.currentPage + 1 }"/>
					</c:url> 
					<a href="${ after }" style="font-weight:bold;">[next]</a>
				</c:if>
			
               
                   
                    
                </div>

<!-- 				<div class="col-12 text-center" >
                    <a href="#" class="btn razo-btn mt-30" style="float: right; background-color: purple;">Post</a>
                </div> -->
                
                   

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
    <u:isLogin>
    <script src="/TunaMusic/resources/js/mylist.js"></script>
	</u:isLogin>



</body>
</html>