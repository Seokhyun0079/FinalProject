package com.music.tuna.payment.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.music.tuna.payment.vo.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.music.tuna.member.model.vo.Member;
import com.music.tuna.payment.service.PaymentService;
import com.music.tuna.payment.vo.Payment;
import org.springframework.web.servlet.ModelAndView;

import java.sql.Date;

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
		
	@RequestMapping(value="/paymember.do", method=RequestMethod.GET)
	public String paymember() {
		return "payment/paymember";	
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
		String userId = (String)loginUser.getUserId();
		System.out.println(userId);
		
		int result = pService.payConfirm(userId);
		System.out.println("[paymentController] : "+result);
		return "payment/paypop2";
	}


    /**
     * crowd-funding payment
     */
    @RequestMapping(value = "/payment/fundingPay.do")
    public ModelAndView fundingPay(ModelAndView mv, @RequestParam(value = "gno") String GoodsNo, @RequestParam(value = "fno") String FundingNo){
    	int fno = Integer.parseInt(FundingNo);
    	int gno = Integer.parseInt(GoodsNo);
		Goods gvo = pService.selectGoods(gno);

		System.out.println("[pcontroller] : "+gvo.toString());
		System.out.println("fundingPay fno:"+fno);
		System.out.println("fundingPay gno:"+gno);

		mv.addObject("fno", fno);
        mv.addObject("goods", gvo);
	    mv.setViewName("payment/funding/fundingPay");
	    return mv;
    }
	@RequestMapping(value="/payment/fKakao.do")
	public ModelAndView fKakaopay(HttpServletRequest request, ModelAndView mv, @RequestParam(value = "gno") String GoodsNo, @RequestParam(value = "fno") String FundingNo) {
		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");
		//String userId = loginUser.getUserId();

		int fno = Integer.parseInt(FundingNo);
		int gno = Integer.parseInt(GoodsNo);
		Goods gvo = pService.selectGoods(gno);

		System.out.println("[pcontroller] : "+gvo.toString());
		System.out.println("fKakaopay fno:"+fno);
		System.out.println("fKakaopay gno:"+gno);

		mv.addObject("fno", fno);
		mv.addObject("goods", gvo);
		mv.addObject("loginUser", loginUser);
    	mv.setViewName("payment/funding/fKakaopay");
		return mv;
	}

	@RequestMapping(value="/payment/fNaverpay.do")
	public ModelAndView fNaverpay(ModelAndView mv, @RequestParam(value = "gno") String GoodsNo, @RequestParam(value = "fno") String FundingNo) {
		int fno = Integer.parseInt(FundingNo);
    	int gno = Integer.parseInt(GoodsNo);
		Goods gvo = pService.selectGoods(gno);

		System.out.println("[pcontroller] : "+gvo.toString());
		System.out.println("fNaverpay fno:"+fno);
		System.out.println("fNaverpay gno:"+gno);

		mv.addObject("fno", fno);
		mv.addObject("goods", gvo);
		mv.setViewName("payment/funding/fNaverpay");
		return mv;
	}

	@RequestMapping(value="/payment/fCard.do")
	public ModelAndView fCardpay(ModelAndView mv, @RequestParam(value = "gno") String GoodsNo, @RequestParam(value = "fno") String FundingNo) {
		int fno = Integer.parseInt(FundingNo);
		int gno = Integer.parseInt(GoodsNo);
		Goods gvo = pService.selectGoods(gno);

		System.out.println("[pcontroller] : "+gvo.toString());
		System.out.println("fCardpay fno:"+fno);
		System.out.println("fCardpay gno:"+gno);


		mv.addObject("fno", fno);
		mv.addObject("goods", gvo);
		mv.setViewName("payment/funding/fCardpay");
		return mv;
	}

	@RequestMapping(value = "/payment/fPaySuccess.do")
	public String fPaySuccess(HttpServletRequest request, @RequestParam(value = "gno") String GoodsNo, @RequestParam(value = "fno") String FundingNo) {
		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");

		Payment pm = new Payment();
		pm.setPayNo(0);
		pm.setFno(Integer.parseInt(FundingNo));
		pm.setGoodsNo(Integer.parseInt(GoodsNo));
		pm.setPayDate(new Date(System.currentTimeMillis()));
		pm.setUserId(loginUser.getUserId());

		System.out.println("[pcontroller] : "+pm.toString());
		System.out.println("fPaySuccess fno:"+FundingNo);
		System.out.println("fPaySuccess gno:"+GoodsNo);

		int result = pService.insertfPay(pm);
		if (result>0) System.out.println("[pcontroller] KakaoPay success: "+pm.toString());
		else System.out.println("[pcontroller] KakaoPay fail : "+pm.toString());

    	return "payment/fSuccess";
	}
	@RequestMapping(value = "/payment/fPaySuccess2.do")
	public String fPaySuccess2(HttpServletRequest request, @RequestParam(value = "gno") String GoodsNo, @RequestParam(value = "fno") String FundingNo) {
		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");

		Payment pm = new Payment();
		pm.setPayNo(0);
		pm.setGoodsNo(Integer.parseInt(GoodsNo));
		pm.setFno(Integer.parseInt(FundingNo));
		pm.setPayDate(new Date(System.currentTimeMillis()));
		pm.setUserId(loginUser.getUserId());

		System.out.println("[pcontroller] : "+pm.toString());
		System.out.println("fPaySuccess fno:"+FundingNo);
		System.out.println("fPaySuccess gno:"+GoodsNo);

		int result =  pService.insertfPay(pm);
		if (result>0) System.out.println("[pcontroller] NaverPay success: "+pm.toString());
		else System.out.println("[pcontroller] NaverPay fail : "+pm.toString());

		return "payment/fPaySuccess";
	}
	@RequestMapping(value = "/payment/fPayFail.do")
	public String fPayFail() {
    	return "payment/fPayFail";
	}
	
}
