<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
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

<body style="overflow-y:hidden">
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
							        <input type="text" id="name1" name="userName" class="findfont" placeholder="NAME" style="width: 60%; height: 50px; padding-left: 10px; font-size: 20pt; background-color: rgba( 255, 255, 255, 0.5 ); border:none;" required/>
							        <input type="email" id="email1" name="email" class="findfont" placeholder="EMAIL" style="width: 60%; height: 50px; padding-left: 10px; font-size: 20pt; background-color: rgba( 255, 255, 255, 0.5 ); border:none;" required/><div id="email_check1"></div><BR>
							        <br>
							        <div class="welcome-text text-center">
		                                <input type="submit" id="submit1" class="btn razo-btn btn-2" data-animation="fadeInUpBig" data-delay="700ms" value="FIND!" style="font-size: 16px;"/>
		                            </div>
							    </form>
							    </span>
							    <span style="float:right; margin-right: 20%; margin-top: 50px; width: 30%;">
							    <h3 align="center" style="color:white;">FIND PW</h3>
							    <form action="findPW.do" method="post" style="width: 100%; margin-top: 35px; margin-bottom: 180px">
							        <input type="text" id="name2" name="name2" class="findfont" placeholder="NAME" style="width: 60%; height: 50px; padding-left: 10px; font-size: 20pt; background-color: rgba( 255, 255, 255, 0.5 ); border:none;" required/>
							        <input type="text" id="userId2" name="id2" class="findfont" placeholder="ID" style="width: 60%; height: 50px; padding-left: 10px; font-size: 20pt; background-color: rgba( 255, 255, 255, 0.5 ); border:none;" required/><BR>
							        <input type="email" id="email2" name="email2" class="findfont" placeholder="EMAIL" style="width: 60%; height: 50px; padding-left: 10px; font-size: 20pt; background-color: rgba( 255, 255, 255, 0.5 ); border:none;" required/><div id="email_check2"></div><BR>
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
	<!-- findIDPWPage -->
	<script src="/TunaMusic/resources/js/findIDPWPage.js"></script>
	<u:isLogin>
    <script src="/TunaMusic/resources/js/mylist.js"></script>
	</u:isLogin>
	<script>
		//massage
		var message = '${Msg}';
		if(message != "")
		alert(message);
	</script>


</body>

</html>