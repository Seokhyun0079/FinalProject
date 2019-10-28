/*//massage
var message = '${Msg}';
		if(message != "")
		alert(message);*/

//email 유효성 검사
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

		
