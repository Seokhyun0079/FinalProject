package com.music.tuna.payment.dao;


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

}
	


