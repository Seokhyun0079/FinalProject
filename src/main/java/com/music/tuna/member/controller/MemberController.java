package com.music.tuna.member.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.music.tuna.common.CommonUtils;
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
	
	@RequestMapping(value="/memberInsert.do")
	public String insertMember(Member m, HttpServletRequest request, 
			@RequestParam(name="photo", required=false) MultipartFile photo) {
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		String filePath = root + "\\uploadFiles";
		m.setProfileIMG("not profile img");//null값 에러 방지
		if(!photo.isEmpty()) {
			System.out.println("포토 널값 확인: " + photo);
			String originFileName = photo.getOriginalFilename();
			String changeName = CommonUtils.getRandomString();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String changeNameExt = changeName+ext;
			m.setProfileIMG(changeNameExt);
			try {
				photo.transferTo(new File(filePath + "\\ " + changeNameExt));
			} catch (IllegalStateException | IOException e) {
				new File(filePath + "\\" + changeName + ext).delete();
				System.out.println("프로필 사진 업로드 실패");
			}
		
		}
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
	
	@RequestMapping(value = "/login/login.do")
	public String loginCheck(Member m, Model model, HttpServletRequest request) {
		HttpSession httpSession = request.getSession();
		if(httpSession.getAttribute("loginUser") != null) {
			System.out.println("login clear");
			httpSession.removeAttribute("loginUser");
		}
		
		Member loginUser = memberService.loginMember(m);
		
		if(loginUser != null) {
			model.addAttribute("loginUser", loginUser);
			httpSession.setAttribute("loginUser", loginUser);
			System.out.println("login: " + loginUser);
			return "redirect:/";
		}else {
			return "member/loginPage";
		}
			
		
		
	}
	
	@RequestMapping(value = "/logout.do")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/loginPage.do")
	public String loginPage() {
		
		return "/member/loginPage";
	}
	
	
	@RequestMapping(value = "/findIDPW.do")
	public String findIDPWPage() {
		
		return "/member/findIDPWPage";
	}
	

	@RequestMapping(value = "/findID.do", method = RequestMethod.POST)
	public void findID(@RequestParam("name")String name,@RequestParam("email")String email, HttpServletResponse response) {
		Member findId = memberService.findId(name,email);
		JSONObject obj = new JSONObject();
		if(findId!=null) {
			String sendIdMsg = "회원님의 아이디는 '" + findId.getUserId() + "'입니다.";
			obj.put("msg", sendIdMsg);
		}else {
			obj.put("msg", "일치하는 회원정보가 없습니다.");
		}
		response.setContentType("application/x-json; charset=UTF-8");
		try {
			response.getWriter().print(obj);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/findPW.do" , method = RequestMethod.POST)
	public String findPW(Member m, Model model) {
		
		return "redirect:/";
	}

	

}
