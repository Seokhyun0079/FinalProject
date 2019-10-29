package com.music.tuna.payment.dao;



import com.music.tuna.member.model.vo.Member;



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
	public int updatePaymember(Member loginUser) {
		return sqlSession.update("payment.updatePaymember",loginUser);
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
	public Member selectMember(Member loginUser) {
		return sqlSession.selectOne("payment.selectMember", loginUser);


	}

}
	


