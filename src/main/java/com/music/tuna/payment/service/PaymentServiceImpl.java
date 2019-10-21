package com.music.tuna.payment.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.music.tuna.payment.dao.PaymentDao;
import com.music.tuna.payment.vo.Payment;

public class PaymentServiceImpl implements PaymentService{

	@Autowired
	private PaymentDao pDao;
	
	@Override
	public int insertPayment(Payment p) {
		int result = pDao.insertPayment(p);
		pDao.commit();
		
		return result;
	}

	@Override
	public int payConfirm() {
		// TODO Auto-generated method stub
		return 0;
	}

}
