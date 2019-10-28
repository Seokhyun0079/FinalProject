package com.music.tuna.payment.dao;

import com.music.tuna.payment.vo.Goods;
import com.music.tuna.payment.vo.Payment;

public interface PaymentDao {
	void commit();
	int insertPayment(String userId);


	/**
	 * crowd-funding payment
	 */
	public Goods selectGoods(int gno);
	public int insertfPay(Payment pm);
	public int updateFunding(Payment pm);
}
