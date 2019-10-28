package com.music.tuna.payment.dao;


import com.music.tuna.payment.vo.Goods;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.music.tuna.payment.vo.Payment;
import com.music.tuna.util.SqlSessionFactoryBean;

@Repository
public class PaymentDaoImpl implements PaymentDao{


	private SqlSession sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	
	@Override
	public int insertPayment(String userId) {
		System.out.println("pDAO : "+userId);
		return sqlSession.insert("payment.insertPayment", userId);
	}

	@Override
	public void commit() {
		sqlSession.commit();
		System.out.println("sql문 커밋 된다");
	}
	
	// 결제하면 유료회원으로 업데이트
	@Override
	public int updatePaymember(String userId) {
		System.out.println("업뎃?: " + userId);
		return sqlSession.update("payment.updatePaymember",userId);
	}

	/**
	 * crowd-funding payment
	 */
	@Override
	public Goods selectGoods(int gno){
		return sqlSession.selectOne("payment.selectGoods", gno);
	}
	@Override
	public int insertfPay(Payment pm) {
		System.out.println("[pdao] insertfPay:"+pm.toString());
		int res = sqlSession.insert("payment.insertfPay", pm);
		System.out.println("[pdao] insertfPay:"+res);
		return res;
	}
	@Override
	public int updateFunding(Payment pm) {
		System.out.println("[pdao] updateFunding:"+pm.toString());
		int res = sqlSession.insert("payment.updateFunding", pm);
		System.out.println("[pdao] updateFunding:"+res);
		return res;
	}
}
	


