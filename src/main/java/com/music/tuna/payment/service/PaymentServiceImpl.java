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
	public int payConfirm(Payment p) {
		System.out.println("결제 서비스 임플 커밋 되나?");
		pDao.commit();
		System.out.println("커밋 된다");
		return pDao.insertPayment(p);
	}


}
