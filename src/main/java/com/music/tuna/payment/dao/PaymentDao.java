package com.music.tuna.payment.dao;

import com.music.tuna.member.model.vo.Member;
import com.music.tuna.payment.vo.Goods;
import com.music.tuna.payment.vo.Payment;

public interface PaymentDao {
	int insertPayment(String userId);
	int updatePaymember(Member loginUser);
	void commit();


	/**
	 * crowd-funding payment
	 */
	public Goods selectGoods(int gno);
	public int insertfPay(Payment pm);
	public int updateFunding(Payment pm);
	Member selectMember(Member loginUser);

}
