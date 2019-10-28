<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>naverpay</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
	<!-- <input type="button" id="naverPayBtn" value="네이버페이 결제 버튼"> -->
	<script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js"></script>
	
	<script>
	var oPay = Naver.Pay.create({
        "mode" : "production", // development or production
        "clientId": "u86j4ripEt8LRfPGzQ8" // clientId
  });

  //직접 만드신 네이버페이 결제버튼에 click Event를 할당하세요
  /* var elNaverPayBtn = document.getElementById("naverPayBtn");
 */
  /* elNaverPayBtn.addEventListener("click", function() { */
	  
      oPay.open({
        "merchantUserKey": "u86j4ripEt8LRfPGzQ8",
        "merchantPayKey": "vip",
        "productName": "Tuna Music 이용권",
        "totalPayAmount": "100",
        "taxScopeAmount": "100",
        "taxExScopeAmount": "0",
        "returnUrl": "paySucess2.do"
      });
      
 		
  /* }); */
</script>
	
</body>
</html>