<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    
    <br><br><br>
    <h1 style="margin-left:43%;">TUNA MUSIC</h1>
	<form id="joinForm" style="margin-bottom: 80px;" method="post" enctype="multipart/form-data">
		<table style="margin-left:40%; margin-top: 50px; font-family: Oswald;">
			<tr>
				<td style="width:130px"> <h6>* ID </h6></td>
				<td> <h6>${loginUser.userId}</h6></td>
				
			</tr>
			<tr>
				<td><h6> * NEW PW </h6></td>
				<td><input type="password" name="userPwd" id="userPwd" required/></td>
			</tr>
			<tr>
				<td><h6> * Comfirm PW &nbsp </h6></td>
				<td><input type="password" name="userPwd2" id="userPwd2" required/><div id="alert-success" style="color: gray">비밀번호가 일치합니다.</div><div id="alert-danger" style="color: rgb(221, 35, 121);">비밀번호가 일치하지 않습니다.</div></td>
			</tr>
			<tr>
				<td><h6> * NAME </h6></td>
				<td><h6 style="font-weight:bolder;">${loginUser.userName}</h6></td>
			</tr>
			<tr>
				<td><h6> * NickName </h6></td>
				<td><input type="text" name="nickName" id="nickName" value="${loginUser.nickName}" required/></td>
			</tr>
			<tr>
				<td><h6> * date of birth</h6> </td>
				<td><h6>
				<fmt:parseDate value="${loginUser.birthDay}" var="dateFmt" pattern="yyyy-MM-dd HH:mm:ss"/>
				<fmt:formatDate value="${dateFmt}"  pattern="yyyy.MM.dd." var="birth"/>
				${birth}</h6>
			</tr>
			<tr>
				<td><h6> * Gender </h6></td>
				<td><h6>
					<c:set var="gender" value="${loginUser.gender}"/>
					<c:choose>
						<c:when test="${gender eq '1'}">
						male
						</c:when>
						<c:otherwise>
						female
						</c:otherwise>
					</c:choose></h6>
				</td>
			</tr>
			<tr>
				<td><h6> * E-Mail </h6></td>
				<td><input type="email" name="email" id="email" value="${loginUser.email}" required/><div id="email_check"></div></td>
			</tr>
			<tr>
				<td><h6> &nbsp&nbsp&nbspPhone-Number </h6></td>
				<td><input type="tel" name="phone" value="${loginUser.phone}"/></td>
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
		<div style="margin-left:40%;">
		<span class="view-more-button text-center" align="center">
                <input type="submit" id="update" style="margin-top:10px; cursor:pointer;" value="EDIT" class="btn razo-btn mt-50">
        </span>
        <span class="view-more-button text-center" align="center">
                <input type="submit" id="delete" style="margin-top:10px; cursor:pointer;" value="delete" class="btn razo-btn mt-50">
        </span>
		</div>
        <input type="hidden" name="oldPhoto" value="${loginUser.profileIMG}" />
        <input type="hidden" name="userId" id="userId" value="${loginUser.userId}" />
	</form>
	
	<script type="text/javascript">
		
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
		
		
		//이메일 유효성,중복체크
		$("#email").blur(function() {
			
			var userId = $("#userId").val();
			var email = $("#email").val();
		    
			var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		    if (!regExp.test(email)){
		    	$("#email_check").css("color","rgb(221, 35, 121)")
				$("#email_check").html("이메일을 정확히 입력하세요!");
				$("#submit").attr("disabled", "disabled");
				$('#email').val("");
		    }else{
		    	
		    	$.ajax({
					url : 'duplicateCheck2.do',
					type : "POST",
					data:{
						userId : userId,
						email : email
					},
					dataType:"JSON",
					success : function(data){
						if(data.result){
							$("#email_check").css("color","rgb(221, 35, 121)");
							$("#email_check").html("중복된 이메일입니다. 다른 이메일을 입력해 주세요!");
							$("#submit").attr("disabled", "disabled");
						}else{
							$("#email_check").css("color","gray");
							$("#email_check").html("사용가능한 이메일입니다!");
							$("#submit").removeAttr("disabled");
						}
					}
				
				})
		    	
		    	
		    }

		});
		
		//미리보기 script

		var sel_file;
		
		$(document).ready(function(){
			$("#input_photo").on("change", handleImgFileSelect);
		});
		
		function handleImgFileSelect(e){
			var files = e.target.files;
			var filesArr = Array.prototype.slice.call(files);
			
			filesArr.forEach(function(f){
			
				sel_file = f;
				
				var reader = new FileReader();
				reader.onload = function(e){
					$("#prePhoto").attr("src", e.target.result);
				}
				reader.readAsDataURL(f);
			});
			
		}
		
 		//파일 업로드 디자인
    	
    	$(document).on("change", ".file-input", function(){
    	     
            $filename = $(this).val();
            $(".filename").text($filename);

        });
 		
 		//submit js
 		$("#update").click(function () {
        	   $("form").attr("action", "memberUpdate.do");
		});
		 
		$("#delete").click(function () {
			   if(confirm("정말로 탈퇴하시겠습니까")){
			   $('#userPwd').removeAttr( 'required' );
			   $('#userPwd2').removeAttr( 'required' );
			   $('#nickName').removeAttr( 'required' );
			   $('#email').removeAttr( 'required' );
		       $("form").attr("action", "memberDelete.do");
			   }
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
	<u:isLogin>
    <script src="/TunaMusic/resources/js/mylist.js"></script>
	</u:isLogin>

</body>

</html>