<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <!-- Title -->
    <title>TUNA MUSIC | ERROR</title>
    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">

</head>
<body>
	<!-- /Preloader -->
	<script>
		window.onload = function () {
			 alert("페이지가 존재하지 않습니다. 이전페이지로 돌아갑니다");
			 history.go(-1);
		}
	</script>
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
</body>
</html>