<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>kakaopay</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
	<script>
		$(function(){
			var IMP = window.IMP;
			IMP.init('imp22024250'); //가맹점 식별코드
			var msg;
			
			IMP.request_pay({
				pg : 'kakaopay',
				pay_method : 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : 'Tuna Music 이용권',
                amount : 8900
                /* buyer_name : ${loginUser.userName},
                buyer_tel : ${loginUser.phone} */
			}, function(rsp){
				if(rsp.success){
					jQuery.ajax({
						url: "payment/cardPayment", //payment의 ~에서 값을 처리한다? //cardPayment? -kakaopay?- /payment/complete
						type: "POST",
						dataType: "json",
						data: {imp_uid:rsp.imp_uid}
					}).done(function(data){
						if(everythings_fine){
							msg = "결제가 완료되었습니다.";
							msg += '\n고유ID' + rsp.imp_uid;
                            msg += rsp.merchant_uid;
                            msg += rsp.paid_amount;
                            msg += rsp.apply_num;
						} else{
							
						}
					});
					//성공시 이동할 페이지
					alert("결제가 완료되었습니다.");
					window.close();
					//location.href='/order/paySucess?msg='+msg;
				} else{
					msg = "결제에 실패했습니다.";
					msg += '에러내용 : ' + rsp.error_msg;
                    //실패시 이동할 페이지
                    
					alert(msg);
				}
			});
		});
	</script>
</body>
</html>