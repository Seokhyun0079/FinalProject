<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>TUNA MUSIC | paypop</title>

    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">
    
    <!-- All JS Files -->

    <!-- jQuery -->
    <script src="resources/js/jquery.min.js"></script>
    <!-- Popper -->
    <script src="resources/js/popper.min.js"></script>
    <!-- Bootstrap -->
    <script src="resources/js/bootstrap.min.js"></script>
    <!-- All Plugins -->
    <script src="resources/js/razo.bundle.js"></script>
    <!-- Active -->
    <script src="resources/js/default-assets/active.js"></script>

</head>
<body>
<div>
    <h5 style="color: #DC2878; padding: 20px;">
    <img src="/TunaMusic/resources/img/core-img/fish.png" width="50" height="50">Tuna Music 이용권</h5>
    </div>
    <div style="text-align: center; border:2px solid #DC2878; border-radius: 3px; border-left-style: hidden; border-right-style: hidden; background-color:rgba(252, 252, 252);" >
        <h5>Tuna Music Membership 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <!-- <form id="Payform"> -->
        <span style="color: gray;"><font size="4">결제 금액</font></span> &nbsp;&nbsp;
        <span style="color: #DC2878"><font size="5">8,900</font></span> <span style="color: black;">원</span></h5>
        
        <br>
        <form action="paypop.do" name="paymentform" method="POST" id="paymentform" class="paymentform">
        <span> 결제종류 &nbsp;&nbsp;<select id="paymentSelect" name="paymentSelect">
			<option value="card">신용카드</option>
			<option value="kakaopay">카카오페이</option>
		</select>
		</span>
        </form>
        <!-- <h6 style="color: seagreen;"><b>결제 방법</b> </h6> -->
		<br>
		<!-- </form>    -->
        <!-- <input type="radio" name="chk_1" value="kakaopay">&nbsp;카카오페이<br>
        <input type="radio" name="chk_1" value="naverpay" >&nbsp; 네이버페이 -->
    </div>
    
    <div style="padding: 20px;">
        <input type="checkbox" name="chk_2" id="chk_2" value="agree">&nbsp;&nbsp;TuNa Music 유료서비스약관 및 하단 유의사항에 동의합니다.
    </div>
    <div class="event-purchase-button" style="text-align: center;">
    	
        <input type="button" class= "btn razo-btn" name="btn_1" value="결제하기" onclick="payment();"> &nbsp; &nbsp;
        <input type="button"class= "btn razo-btn"  name="btn_2" value="취소" onclick="window.close()"> 
    </div>
    <br><br>
    <div style="padding: 20px; border:2px solid gray;">
        <h6>이용권 유의사항</h6>
            <ul> 
                <li><span style="color: red;">PC, 안드로이드폰, 아이폰, 태블릿, 모든 MP3 Player 등에서 이용 가능</span>합니다.</li>
                <li>이용권 사용기간 내에 다운로드하지 않을 경우, <span style="color: red;">잔여 곡은 다음 달로 이월되지 않습니다.</span></li>
                <li>결제취소는 결제 후 7일 내 서비스 미 이용 시 가능하며, 고객센터(1566-7727)나 1:1문의로 신청하세요.</li>
                <li>일부 음원은 음원권리권자의 계약 또는 요청에 따라 서비스가 제한될 수 있습니다.</li>
                <li><b>결제 수단의 정지/한도초과/정보변경 등의 사유로 결제상태가 변경될 경우, 결제 및 서비스가 일시 정지되며 정상으로 전환되거나 직접 일시 정지 해제를 하시면 다시 결제 및 서비스가 시작됩니다.</b></li>
            </ul>
    </div>

	<script>
		function payment(){
			/* var payment = $("paymentSelect option:selectd").val(); */
			
			//얘가 켜짐
			if(!$('#chk_2').is(":checked")){
				alert("약관에 동의해 주세요");
			}else{
				alert("결제페이지로 이동합니다.");
				location.href="kakao.do";
				form.submit();
			}
						
			// 선택된 옵션의 text, value 구하기
			/* $("#paymentSelect option:selected").val(); */

			console.log($('#paymentSelect option:selected').val());
			/* if(!$('#chk_2').is(":checked")){
				alert("약관에 동의해 주세요");
			}else if("#paymentSelect option:selected").val()=="kakaopay"){
				alert("결제페이지로 이동합니다.");
				location.href="kakao.do";
			} */
			
			
		}
	</script>



</body>
</html>