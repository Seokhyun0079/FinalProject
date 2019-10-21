package com.music.tuna.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.music.tuna.payment.service.PaymentService;
import com.music.tuna.payment.vo.Payment;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService pService;
	
	@RequestMapping(value="/payment.do")
	public String payment(@ModelAttribute Payment p) {
		int result = pService.payConfirm(p);
		return "payment/payment";
	}
	
	@RequestMapping(value="/paypop.do")
	public String paypop() {
		return "payment/paypop";
	}
	
	@RequestMapping(value="/kakao.do")
	public String paymentInfo() {
		return "payment/kakaopay";
	}
}
