package com.music.tuna.payment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.tuna.payment.dao.PaymentDao;
import com.music.tuna.payment.vo.Payment;

@Service("pService")
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	private PaymentDao pDao;

	@Override
	public int payConfirm(String userId) {		
		int result =  pDao.insertPayment(userId);
		pDao.commit();
		return result;
	}


}
