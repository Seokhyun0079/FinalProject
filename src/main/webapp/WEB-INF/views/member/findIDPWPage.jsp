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
    <title>TUNA MUSIC | FIND PW PAGE</title>

    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">
   
    <style type="text/css">
	    .findfont::placeholder {
			  color: rgb(221, 35, 121);
			  font-size: 12pt;
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
	                    <form action="login/login.do" method="post" style="width: 100%; margin-top: 15px;">
	                        <input type="text" name="userId" style="width: 80%; margin-left: 40px; margin-bottom: 8px" placeholder="ID">
	                        <input type="password" name="userPwd" style="width: 80%; margin-left: 40px;" placeholder="PW">
	                        <input type="submit" value="LOGIN" style="cursor:pointer; color: rgb(221, 35, 121);font-weight: bold; font-family:sans-serif; font-style:normal; background-color:transparent;  margin-top: 15px; font-size: 35px; box-shadow: 0px 0px 0px 0px;">
	                        <div style="float: right;">
	                            <div style="color:gray; width: 100%;"><a href="/TunaMusic/member/findIDPW.do" style="color:gray;">FORGOT PW?</a></div>
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
                                    <i class="fa fa-music"></i>
                                </div>

                                <!-- Search Icon -->
                                <div class="search-icon" data-toggle="modal" data-target="#searchModal">
                                    <i class="fa fa-search"></i>
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
    </header>
    <section class="welcome-area">
        <!-- Single Welcome Slide -->
        <div class="single-welcome-slide bg-img bg-overlay" style="background-image: url(/TunaMusic/resources/img/bg-img/1.jpg);">
            <!-- Welcome Content -->
            <div class="welcome-content h-100">
                    <div class="row h-100 align-items-center justify-content-center">
                        <!-- Welcome Text -->
                        <div style="width:100%;">
                            <div class="welcome-text text-center" style="display: inline;">
							    <h1 align="center" style="color:white;">TUNA MUSIC</h1>
							    <span style="float:left; margin-left: 20%; margin-top: 50px; width: 30%;">
							    <h3 align="center" style="color:white;">FIND ID</h3>
							    <form method="post" style="width: 100%; margin-top: 35px; margin-bottom: 180px">
							        <input type="text" id="name1" name="userName" class="findfont" placeholder="NAME" style="width: 60%; height: 50px; padding-left: 10px; font-size: 20pt" required/>
							        <input type="email" id="email1" name="email" class="findfont" placeholder="EMAIL" style="width: 60%; height: 50px; padding-left: 10px; font-size: 20pt" required/><div id="email_check1"></div><BR>
							        <br>
							        <div class="welcome-text text-center">
		                                <input type="submit" id="submit1" class="btn razo-btn btn-2" data-animation="fadeInUpBig" data-delay="700ms" value="FIND!" style="font-size: 16px;"/>
		                            </div>
							    </form>
							    </span>
							    <span style="float:right; margin-right: 20%; margin-top: 50px; width: 30%;">
							    <h3 align="center" style="color:white;">FIND PW</h3>
							    <form action="findPW.do" method="post" style="width: 100%; margin-top: 35px; margin-bottom: 180px">
							        <input type="text" id="name2" name="name2" class="findfont" placeholder="NAME" style="width: 60%; height: 50px; padding-left: 10px; font-size: 20pt" required/>
							        <input type="text" id="userId2" name="id2" class="findfont" placeholder="ID" style="width: 60%; height: 50px; padding-left: 10px; font-size: 20pt" required/><BR>
							        <input type="email" id="email2" name="email2" class="findfont" placeholder="EMAIL" style="width: 60%; height: 50px; padding-left: 10px; font-size: 20pt" required/><div id="email_check2"></div><BR>
							        <br>
							        <div class="welcome-text text-center">
		                                <input type="submit" id="submit2" class="btn razo-btn btn-2" data-animation="fadeInUpBig" data-delay="700ms" value="FIND!" style="font-size: 16px;"/>
		                            </div>
							    </form>
							    </span>
                            </div>
                        </div>
                    </div>
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
	
	<script type="text/javascript">

	$("#email1").blur(function() {
		var email1 = $("#email1").val();

	    var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	    $("#submit1").removeAttr("disabled");
	    if (!regExp.test(email1)){
	    	$("#email_check1").css("color","rgb(221, 35, 121)")
			$("#email_check1").html("이메일을 정확히 입력하세요!");
			$("#submit1").attr("disabled", "disabled");
			$('#email1').val("");
	    }

	});
	
	$("#email2").blur(function() {
		var email2 = $("#email2").val();

	    var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	    $("#submit1").removeAttr("disabled");
	    if (!regExp.test(email2)){
	    	$("#email_check2").css("color","rgb(221, 35, 121)")
			$("#email_check2").html("이메일을 정확히 입력하세요!");
			$("#submit2").attr("disabled", "disabled");
			$('#email2').val("");
	    }

	});
	
	// FIND ID AJAX
	$('#submit1').click(function(){
		var name = $('#name1').val();
		var email = $('#email1').val();
		
		
		$.ajax({
			url : 'findID.do',
			type : "POST",
			data:{
				name : name,
				email : email
			},
			dataType:"JSON",
			async: false,
			success : function(data){
				console.log(data.msg);
				alert(data.msg);
			}
			 
		});
	});
	
			
	var message = '${Msg}';
	if(message != "")
	alert(message);

	

	
	</script>	

</body>

</html>