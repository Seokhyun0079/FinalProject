package com.music.tuna.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.music.tuna.payment.service.PaymentService;

@Controller
public class PaymentController {


	
	@RequestMapping(value="/payment.do")
	public String payment() {
		return "payment/payment";
	}
	
	
	
	
}
