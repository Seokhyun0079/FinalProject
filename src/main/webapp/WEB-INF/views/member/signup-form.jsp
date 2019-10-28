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
    <title>TUNA MUSIC | SIGN-UP PAGE</title>

    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">
    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">
    
    <style>
    h6{
    	margin-top:5px;
    }
    
   	.box-file-input label{
	    display:inline-block;
	    background:black;
	    color:white;
	    padding:0px 15px;
	    line-height:35px;
	    cursor:pointer;
	}
	
	.box-file-input label:after{
	    content:"UPLOAD";
	}
	
	.box-file-input .file-input{
	    display:none;
	}
  
    </style>
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
    
    <br><br><br>
    <h1 align="center">SIGN-UP</h1>
	<form action="memberInsert.do" id="joinForm" style="margin-bottom: 80px;" method="post" enctype="multipart/form-data">
		<table align="center" style="margin-left:40%; margin-top: 50px; font-family: Oswald;">
			<tr>
				<td style="width:130px"> <h6>* ID </h6></td>
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
		
						document.write("<input id='storebirth' name='birthDay'  value='생년월일 저장소'  type = 'hidden' >");
									
						var sendBirth=function(){
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
							
						};
						
						$(function(){
							$("select[name='birth']").blur(function(){
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
										var birth = $("input[name='birthDay']").val();
										if(birth < 10000000){
											$("#submit").attr("disabled", "disabled");
										}else{
											$("#submit").removeAttr("disabled");
										}
									});
							
						});
						
						
					</script>
				</td>
			</tr>
			<tr>
				<td><h6> * Gender </h6></td>
				<td><input type="radio" name="gender" value="1" required/>&nbsp;&nbsp;male&nbsp;&nbsp;<input type="radio" name="gender" value="2">&nbsp;&nbsp;female</td>
			</tr>
			<tr>
				<td><h6> * E-Mail </h6></td>
				<td><input type="email" name="email" id="email" required/><div id="email_check"></div></td>
			</tr>
			<tr>
				<td><h6> &nbsp&nbsp&nbspPhone-Number </h6></td>
				<td><input type="tel" name="phone"/></td>
            </tr>			
		</table>
		<table align="center" style="margin-left:40%; margin-top: 0; font-family: Oswald;">
			<tr>
				<td style="width:130px;"><h6>&nbsp&nbsp&nbspProfile IMG</h6></td>
				<td style="width:123px;"><img id="prePhoto" src="/TunaMusic/resources/uploadFiles/${loginUser.profileIMG}" alt="" style="width:100px;"></td>
				<td> <div class="box-file-input"><label><input type="file" name="photo" id="input_photo" class="file-input" accept="image/*"></label></div></td>
				
			</tr>
		</table>
		<br><br>
		<div class="view-more-button text-center" align="center">
                <input type="submit" id="submit" style="margin-top:10px; cursor:pointer;" value="ENROLL" class="btn razo-btn mt-50">
        </div>
	</form>

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
	<!-- signup-form -->
	<script src="/TunaMusic/resources/js/signup-form.js"></script>
	<u:isLogin>
    <script src="/TunaMusic/resources/js/mylist.js"></script>
	</u:isLogin>

</body>

</html>