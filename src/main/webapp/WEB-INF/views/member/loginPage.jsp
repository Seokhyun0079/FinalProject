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
    <title>TUNA MUSIC | LOG-IN PAGE</title>

    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">
    
    
</head>

<body style="overflow-y:auto">
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
        <div style="background-image: url(/TunaMusic/resources/img/bg-img/1.jpg);">
            <!-- Welcome Content -->
            <div class="welcome-content h-100">
                    <div class="row h-100 align-items-center justify-content-center">
                        <!-- Welcome Text -->
                        <div class="col-12 col-md-9 col-lg-6">
                            <div class="welcome-text text-center">
                                <br><br><br><br><br>
							    <h1 align="center" style="color:white;">TUNA MUSIC</h1>
							    <form action="login/login.do" method="post" align="center" style="width: 100%; margin-top: 35px; margin-bottom: 180px">
							        <input type="text" name="userId" id="userId" placeholder="Identification" style="width: 40%; height: 50px; padding-left: 10px; font-size: 20pt; background-color: rgba( 255, 255, 255, 0.5 ); border:none;"><BR>
							        <input type="password" name="userPwd" id="userPwd" placeholder="Password" style="width: 40%; height: 50px; padding-left: 10px; font-size: 20pt; background-color: rgba( 255, 255, 255, 0.5 ); border:none;"><BR>
							        <br>
							        <div class="view-more-button text-center">
							        <input type="submit" style="margin-top:20px; cursor:pointer;" value="LOGIN" class="btn razo-btn mt-50"></a>
							        </div>
							        <br>
							        <div>
							            <div style="color:white; width: 100%;"><a href="/TunaMusic/member/findIDPW.do" style="color:white; font-weight:bold;">FORGOT ID/PW?</a></div>
							            <div style="color:white; width: 100%;"><a href="/TunaMusic/member/memberJoinView.do" style="color:white; font-weight:bold;" >SIGN-UP</a></div><br>
							        </div>
							    </form>
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
	<u:isLogin>
    <script src="/TunaMusic/resources/js/mylist.js"></script>
	</u:isLogin>
	
	<script type="text/javascript">
		/*비밀번호 찾기 후 alert(findPW.getUserName()+"님의 이메일로 임시 비밀번호를 발송하였습니다!)*/
		var message = '${Msg}';
		if(message != "")
		alert(message);
	</script>

</body>

</html>