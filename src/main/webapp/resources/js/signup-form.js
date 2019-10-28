//아이디 중복 체크, 유효성 검사
$("#userId").blur(function(){
	var userId = $('#userId').val();
	var idReg = /^[a-zA-Z]+[a-z0-9A-Z]{3,19}$/g;
	if( !idReg.test( userId ) ) {
		$("#id_check").css("color","rgb(221, 35, 121)")
		$("#id_check").html("아이디는 영소문자로 시작하는 4~20자 영문자 또는 숫자이어야 합니다.");
		$("#submit").attr("disabled", "disabled");
		$('#userId').val("");



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

//이메일 유효성,중복체크
$("#email").blur(function() {
	
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
				email : email
			},
			dataType:"JSON",
			success : function(data){
				if(data.result){
					$("#email_check").css("color","rgb(221, 35, 121)")
					$("#email_check").html("중복된 이메일입니다. 다른 이메일을 입력해 주세요!");
					$("#submit").attr("disabled", "disabled");
				}else{
					$("#email_check").css("color","gray")
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