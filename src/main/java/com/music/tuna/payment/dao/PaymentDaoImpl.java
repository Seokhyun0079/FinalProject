package com.music.tuna.payment.dao;


import org.apache.ibatis.session.SqlSession;

import com.music.tuna.payment.vo.Payment;
import com.music.tuna.util.SqlSessionFactoryBean;

public class PaymentDaoImpl implements PaymentDao{

	SqlSession sqlSession;
	public PaymentDaoImpl() {
		this.sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
		
	}
	
	@Override
	public int insertPayment(Payment p) {
		return sqlSession.insert("payment.insertPayment",p);
	}
	
	@Override
	public void commit() {
		sqlSession.commit();
		
	}


}
