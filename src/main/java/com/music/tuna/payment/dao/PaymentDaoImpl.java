package com.music.tuna.payment.dao;


import com.music.tuna.crowdFunding.model.vo.Funding;
import com.music.tuna.payment.vo.Goods;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.music.tuna.payment.vo.Payment;
import com.music.tuna.util.SqlSessionFactoryBean;

import java.util.List;

@Repository
public class PaymentDaoImpl implements PaymentDao{
	private SqlSession sqlSession;
	PaymentDaoImpl(){
		this.sqlSession =  SqlSessionFactoryBean.getSqlSessionInstance();
	}

	
	@Override
	public int insertPayment(String userId) {
		System.out.println("pDAO : "+userId);
		return sqlSession.insert("payment.insertPayment", userId);
	}

	
	// 결제하면 유료회원으로 업데이트
	@Override
	public int updatePaymember(String userId) {
		return sqlSession.update("payment.updatePaymember",userId);
	}
	@Override
	public void commit() {
		sqlSession.commit();
		System.out.println("sql문 커밋 된다");
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
		List<Payment> paymentList = sqlSession.selectList("payment.selectPayment");
		for(Payment p : paymentList){
			System.out.println("p = " + p);
		}
		System.out.println("[pdao] insertfPay:"+res);
		return res;
	}
	@Override
	public int updateFunding(Payment pm) {
		System.out.println("[pdao] updateFunding:"+pm.toString());
		int res = sqlSession.update("payment.updateFunding", pm);
		List<Funding> paymentList = sqlSession.selectList("payment.selectFunding");
		for(Funding f : paymentList){
			System.out.println("f = " + f);
		}
		System.out.println("[pdao] updateFunding:"+res);
		return res;
	}
	public void close(){
		sqlSession.close();
	}

	@Override
	public List<Funding> selectListFunding() {
		List<Funding> paymentList = sqlSession.selectList("payment.selectFunding");
		return  paymentList;
	}

	@Override
	public List<Payment> getpaymentList(Payment pay) {
		List<Payment> paymentList = sqlSession.selectList("payment.selectPaymentList",pay);
		return paymentList;
	}
}
	


