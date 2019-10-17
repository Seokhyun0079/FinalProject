package com.music.tuna.payment.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.music.tuna.payment.dao.PaymentDao;
import com.music.tuna.payment.vo.Payment;

public class PaymentServiceImpl implements PaymentService{

	
	@Autowired
	private PaymentDao paymentDao;
	
	
	
	@Override
	public int insertPayment(Payment p) {
		int result = paymentDao.insertPayment(p);
		paymentDao.commit();
		
		return result;
	}

}
