package com.music.tuna.payment.service;

import com.music.tuna.payment.vo.Payment;

public interface PaymentService {

	int insertPayment(Payment p);

	int payConfirm();
	
	
}
