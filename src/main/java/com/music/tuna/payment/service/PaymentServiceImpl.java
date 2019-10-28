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
		if(result >0) {
			pDao.updatePaymember(userId);
		}else {
			System.out.println("아직 무료회원");
		}
			
		pDao.commit();
		return result;
	}


}
