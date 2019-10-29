package com.music.tuna.payment.service;

import com.music.tuna.crowdFunding.model.dao.FundingDAO;
import com.music.tuna.payment.vo.Goods;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.tuna.member.model.dao.MemberDao;
import com.music.tuna.member.model.vo.Member;
import com.music.tuna.payment.dao.PaymentDao;
import com.music.tuna.payment.vo.Payment;

@Service("pService")
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	private PaymentDao pDao;
	@Autowired
	private FundingDAO fundingDAO;

	@Override
	public Member payConfirm(Member loginUser) {		
		int result =  pDao.insertPayment(loginUser.getUserId());
		Member m = new Member();
		if(result >0) {
			int result2 = pDao.updatePaymember(loginUser);
			pDao.commit();
			if(result2 > 0) {
				/*System.out.println("업데이트x : " + loginUser);*/ // 얘는 C나오는게 맞음
				m = pDao.selectMember(loginUser);
				System.out.println("업데이트 해줘...:"+m); // 얘가 B가 나와야해
			}	
		}else {
			System.out.println("아직 무료회원");
		}
		return m;
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
		int insert = pDao.insertfPay(pm);
		pDao.commit();
		int update = 0;
		if(insert>0) {
			update = fundingDAO.updateFunding(pm);
			fundingDAO.commit();
		}
		return update;
	}

}
