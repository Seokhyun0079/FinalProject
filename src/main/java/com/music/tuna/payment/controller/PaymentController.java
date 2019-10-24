package com.music.tuna.payment.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.music.tuna.member.model.vo.Member;
import com.music.tuna.payment.service.PaymentService;
import com.music.tuna.payment.vo.Payment;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService pService;
	
	@RequestMapping(value="/payment.do")
	public String payment() {
		return "payment/payment";
		
	}
	
	@RequestMapping(value="/paypop.do", method=RequestMethod.GET)
	public String paypop() {
		return "payment/paypop";
	}
	
	@RequestMapping(value="/paySucess.do")
	public String paypopPost(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");
		String userId = loginUser.getUserId();
		System.out.println(userId);
		
		int result = pService.payConfirm(userId);
		System.out.println("[paymentController] : "+result);
		return "payment/payment";
	}
	
	@RequestMapping(value="/kakao.do")
	public String kakaopay() {
		return "payment/kakaopay";
	}
	
	@RequestMapping(value="/naverpay.do")
	public String naverpay() {
		return "payment/naverpay";
	}
	
	@RequestMapping(value="/card.do")
	public String cardpay() {
		return "payment/cardpay";
	}
	
	@RequestMapping(value="/paySucess2.do")
	public String paypopPost2(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");
		String userId = loginUser.getUserId();
		System.out.println(userId);
		
		int result = pService.payConfirm(userId);
		System.out.println("[paymentController] : "+result);
		return "payment/paypop2";
	}
	
	
}
