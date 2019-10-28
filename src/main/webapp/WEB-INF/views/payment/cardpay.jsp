<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>cardpayment</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
    <script>
    $(function(){
        var IMP = window.IMP; 
        IMP.init('imp44436352'); 
        var msg;
        
        IMP.request_pay({
            pg : 'inicis',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : 'Tuna Music 이용권',// 상품명
            amount : 100, // 금액
            buyer_email : 'TEST@naver.com',
            buyer_name : 'TEST',
            buyer_tel : '01000000000',
            buyer_addr : '123',
            buyer_postcode : '123-456',
        }, function(rsp) {
            if ( rsp.success ) {
                jQuery.ajax({
                    url: "/payments/complete", 
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        imp_uid : rsp.imp_uid
                       
                    }
                }).done(function(data) {
                    
                    if ( everythings_fine ) {
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + rsp.imp_uid;
                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                        msg += '\결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;
                        
                        alert(msg);
                    } else {
                    }
                });
                alert("결제가 완료되었습니다.");
                location.href='paySucess.do';
                <%-- location.href = "<%=request.getContextPath()%>/views/myPage.jsp"; --%>
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                alert(msg);
                location.href = "payment.do";
            }
        });
        
    });
    </script>
 
</body>
</html>
