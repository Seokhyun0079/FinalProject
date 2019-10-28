package com.music.tuna.payment.service;

import com.music.tuna.payment.vo.Goods;
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



	/**
	 * crowd-funding payment
	 */
	@Override
	public Goods selectGoods(int gno) {
		return pDao.selectGoods(gno);
	}
	@Override
	public int insertfPay(Payment pm) {
		System.out.println("[pservice] : "+pm.toString());
		int insert = pDao.insertfPay(pm);
		System.out.println("[pservice] insertfPay:"+insert);
		int update = 0;
		if(insert>0) {
			update = pDao.updateFunding(pm);
			System.out.println("[pservice] updateFunding:"+update);
		}
		pDao.commit();
		return update;
	}

}
