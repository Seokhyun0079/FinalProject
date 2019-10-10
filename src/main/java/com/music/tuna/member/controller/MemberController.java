package com.music.tuna.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.music.tuna.member.model.service.MemberService;
import com.music.tuna.member.model.vo.Member;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping(value="/memberJoinView.do")
	public String showMemberJoinView() {
		return "member/signup-form";
	}
	
	@RequestMapping(value="/memberInsert.do", method=RequestMethod.POST)
	public String insertMember(Member m) {
		System.out.println("member : " + m);
		String encPassword = passwordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encPassword);
		int result = memberService.insertMember(m);
		System.out.println("result : " + result);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/duplicateCheck.do", method = RequestMethod.POST)
	public void duplicateCheck(@RequestParam("id") String userId, HttpServletResponse response){
		boolean duplicate = memberService.duplicateCheck(userId);
		JSONObject obj = new JSONObject();
		obj.put("result", duplicate);
		response.setContentType("application/x-json; charset=UTF-8");
		try {
			response.getWriter().print(obj);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	

}
