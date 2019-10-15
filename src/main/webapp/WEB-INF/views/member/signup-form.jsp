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
    <title>TUNA MUSIC | SIGN-UP PAGE</title>

    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">
    
    <style>
    h6{
    	margin-top:5px;
    }

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
	                    <form action="login/login.do" method="post" style="width: 100%; margin-top: 15px;">
	                        <input type="text" name="userId" style="width: 80%; margin-left: 40px; margin-bottom: 8px" placeholder="ID">
	                        <input type="password" name="userPwd" style="width: 80%; margin-left: 40px;" placeholder="PW">
	                        <input type="submit" value="LOGIN" style="cursor:pointer; color: rgb(221, 35, 121);font-weight: bold; font-family:sans-serif; font-style:normal; background-color:transparent;  margin-top: 15px; font-size: 35px; box-shadow: 0px 0px 0px 0px;">
	                        <div style="float: right;">
	                            <div style="color:gray; width: 100%;"><a href="#" style="color:gray;">FORGOT PW?</a></div>
	                            <div style="color:gray; width: 100%;"><a href="memberJoinView.do" style="color:gray; float: right;" >SIGN-UP</a></div>
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
    <br><br><br>
    <h2 align="center">SIGN-UP</h2>
	<form action="memberInsert.do" id="joinForm" style="margin-bottom: 80px;" method="post" enctype="multipart/form-data">
		<table align="center" style="margin-left:40%; margin-top: 50px; font-family: Oswald;">
			<tr>
				<td> <h6>* ID </h6><!-- <input  type="button" value="ENROLL"  style="color: white; background-color: gray; outline-style: outset;   margin-top: 15px; font-size: 20px; box-shadow: 0px 0px 0px 0px;"> --></td>
				<td><input type="text" name="userId" id="userId"/><div id="id_check"></div></td>
				
			</tr>
			<tr>
				<td><h6> * PW </h6></td>
				<td><input type="password" name="userPwd" id="userPwd" required/></td>
			</tr>
			<tr>
				<td><h6> * Comfirm PW &nbsp </h6></td>
				<td><input type="password" name="userPwd2" id="userPwd2" required/><div id="alert-success" style="color: gray">비밀번호가 일치합니다.</div><div id="alert-danger" style="color: rgb(221, 35, 121);">비밀번호가 일치하지 않습니다.</div></td>
			</tr>
			<tr>
				<td><h6> * NAME </h6></td>
				<td><input type="text" name="userName" required/></td>
			</tr>
			<tr>
				<td><h6> * NickName </h6></td>
				<td><input type="text" name="nickName" required/></td>
			</tr>
			<tr>
				<td><h6> * date of birth</h6> </td>
				<td>
					<script>
						var today = new Date();
						var toyear = parseInt(today.getFullYear());
						var start = toyear - 10;
						var end = toyear - 70;
						document.write("<select id='year' name=birth>");
						document.write("<option value='' selected>");
						for (i=start;i>=end;i--) document.write("<option>"+i);
						document.write("</select>년  ");
						document.write("<select id='month' name=birth>");
						document.write("<option value='' selected>");
						for (i=1;i<=12;i++) document.write("<option>"+i);
						document.write("</select>월  ");
				
						document.write("<select id='day' name=birth>");
						document.write("<option value='' selected>");
						for (i=1;i<=31;i++) document.write("<option>"+i);
						document.write("</select>일 ");
		
						document.write("<input type = 'hidden' name='birthDay' value='생년월일 저장소'>");
												
						$(function(){
							$("select[name='birth']").click(function(){
								var birth1 = $("#year").val();
								var birth2 = $("#month").val();
								var birth3 = $("#day").val();
								if(birth2<10){
									birth2='0'+birth2;
								}
								if(birth3<10){
									birth3='0'+birth3;
								}

								$("input[name='birthDay']").val(birth1 + birth2 + birth3);
								
							});
						});
						
					</script>
				</td>
			</tr>
			<tr>
				<td><h6> * Gender </h6></td>
				<td><input type="radio" name="gender" value="1" required>&nbsp;&nbsp;male&nbsp;&nbsp;<input type="radio" name="gender" value="2">&nbsp;&nbsp;female</td>
			</tr>
			<tr>
				<td><h6> E-Mail </h6></td>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td><h6> Phone-Number </h6></td>
				<td><input type="tel" name="phone"></td>
            </tr>			
			<tr>
				<td><h6>Profile IMG</h6></td>
				<td><input type="file" name="photo"></td>
			</tr>
			
		</table>
		<br><br>
		<div align="center" style="margin-top:20px;">
                <input id="submit"  type="submit" disabled="true" value="ENROLL"  style="color: white; background-color: gray; outline-style: outset;   margin-top: 15px; font-size: 20px; box-shadow: 0px 0px 0px 0px;">
		</div>
	</form>
	
	<script type="text/javascript">
		//아이디 중복 체크, 유효성 검사
		$("#userId").blur(function(){
			var userId = $('#userId').val();
			//
			var idReg = /^[a-zA-Z]+[a-z0-9A-Z]{3,19}$/g;
			if( !idReg.test( userId ) ) {
				$("#id_check").css("color","rgb(221, 35, 121)")
				$("#id_check").html("아이디는 영소문자로 시작하는 4~20자 영문자 또는 숫자이어야 합니다.");
				$("#submit").attr("disabled", "disabled");
				$('#userId').val("");
				$('#userId').focus();



			}else{
				
			
			$.ajax({
				url : 'duplicateCheck.do',
				type : "POST",
				data:{
					id : userId
				},
				dataType:"JSON",
				success : function(data){
					if(data.result){
						$("#id_check").css("color","rgb(221, 35, 121)")
						$("#id_check").html("중복된 아이디입니다. 다른 아이디를 입력해 주세요!");
						$("#submit").attr("disabled", "disabled");
						$('#userId').focus();
					}else{
						$("#id_check").css("color","gray")
						$("#id_check").html("사용가능한 아이디입니다!");
						$("#submit").removeAttr("disabled");
					}
				}
			
			})
				
			}	
		});

		
		// 비밀번호 확인
		$(function(){
			$("#alert-success").hide();
			$("#alert-danger").hide();
			$("input").keyup(function(){
				var pwd1 = $("#userPwd").val();
				var pwd2 = $("#userPwd2").val();
				if(pwd2 == ""){
					$("#alert-danger").hide();
				}else{
					
				
				
				if(pwd1 != "" || pwd2 != ""){
					if(pwd1 == pwd2){
						$("#alert-success").show();
	                    $("#alert-danger").hide();
						$("#submit").removeAttr("disabled");
					}else{
						$("#alert-success").hide();
	                    $("#alert-danger").show();
	                    $("#submit").attr("disabled", "disabled");
					}
				}
				}
			});
		});
		
		
		
	 
	</script>


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