package com.music.tuna.payment.dao;

import com.music.tuna.crowdFunding.model.vo.Funding;
import com.music.tuna.payment.vo.Goods;
import com.music.tuna.payment.vo.Payment;

import java.util.List;

public interface PaymentDao {
	void commit();
	int insertPayment(String userId);
	int updatePaymember(String userId);


	/**
	 * crowd-funding payment
	 */
	public Goods selectGoods(int gno);
	public int insertfPay(Payment pm);
	public int updateFunding(Payment pm);
	public void close();
	public List<Funding> selectListFunding();
}
