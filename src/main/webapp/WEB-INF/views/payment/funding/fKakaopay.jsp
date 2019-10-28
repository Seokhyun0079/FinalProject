<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>kakaopay</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
<input type="hidden" id="fno" name="fno" value="${fno}">
<input type="hidden" id="gno" name="gno" value="${goods.goodsNo}">
<input type="hidden" id="gname" name="gname" value="${goods.goodsName}">
<input type="hidden" id="gprice" name="gprice" value="${goods.goodsPrice}">
<script>
    var fno = document.getElementById('fno').value;
    var gno = document.getElementById('gno').value;
    var gname = document.getElementById('gname').value;
    var gprice = document.getElementById('gprice').value;

    $(function(){
        var IMP = window.IMP;
        IMP.init('imp22024250'); //가맹점 식별코드
        var msg;

        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : gname,
            amount : gprice
            /* buyer_name : ${loginUser.userName},
                buyer_tel : ${loginUser.phone} */
        }, function(rsp){
            if(rsp.success){
                jQuery.ajax({
                    url: "payment/complete", //payment의 ~에서 값을 처리한다? //cardPayment? -kakaopay?- /payment/complete
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

                        console.log('1');
                        console.log(fno);
                        console.log(gno);

                    } else{

                    }

                });
                //성공시 이동할 페이지
                console.log('2');
                console.log(fno);
                console.log(gno);
                alert("결제가 완료되었습니다.");
                window.close();
                location.href='fPaySuccess.do?gno='+gno+"&fno="+fno;
            } else{
                msg = "결제에 실패했습니다.";
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
                location.href='fPayFail.do';
                alert(msg);
            }
        });
    });
</script>
</body>
</html>