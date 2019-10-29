package com.music.tuna.payment.service;



import com.music.tuna.member.model.vo.Member;
import com.music.tuna.payment.vo.Goods;
import com.music.tuna.payment.vo.Payment;

public interface PaymentService {
	Member payConfirm(Member loginUser);



	/**
	 * crowd-funding payment
	 */
	public Goods selectGoods(int gno);
	public int insertfPay(Payment pm);

}
