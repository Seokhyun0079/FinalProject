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
import com.music.tuna.email.Email;
import com.music.tuna.email.EmailSender;
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
	
	@Autowired
	private Email sendemail;
	
	@Autowired
	private EmailSender emailSender;
	
	@RequestMapping(value="/memberJoinView.do")
	public String showMemberJoinView() {
		return "member/signup-form";
	}
	
	@RequestMapping(value="/memberInsert.do")
	public String insertMember(Member m, HttpServletRequest request, 
			@RequestParam(name="photo", required=false) MultipartFile photo) {
		
		String filePath = request.getSession().getServletContext().getRealPath("\\resources\\uploadFiles");
		System.out.println("filePath:" + filePath);
		m.setProfileIMG("not profile img");//null값 에러 방지
		if(!photo.isEmpty()) {
			String originFileName = photo.getOriginalFilename();
			String changeName = CommonUtils.getRandomString();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String changeNameExt = changeName+ext;
			try {
				photo.transferTo(new File(filePath + "\\" + changeNameExt));
				m.setProfileIMG(changeNameExt);
				System.out.println("프로필 사진 업로드 성공");
			} catch (IllegalStateException | IOException e) {
				new File(filePath + "\\" + changeName + ext).delete();
				System.out.println("프로필 사진 업로드 실패");
			}
		
		}
		String encPassword = passwordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encPassword);
		int result = memberService.insertMember(m);
		System.out.println("회원가입 result : " + result);
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
	
	@RequestMapping(value = "/duplicateCheck2.do", method = RequestMethod.POST)
	public void duplicateCheckEmail(@RequestParam("email") String email, HttpServletResponse response){
		boolean duplicate = memberService.duplicateCheckEmail(email);
		JSONObject obj = new JSONObject();
		obj.put("result", duplicate);
		response.setContentType("application/x-json; charset=UTF-8");
		try {
			response.getWriter().print(obj);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/login/**")
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
			model.addAttribute("Msg", "아이디, 비밀번호를 확인해주세요!");
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
	public String findPW(@RequestParam("name2")String name,@RequestParam("id2")String id,@RequestParam("email2")String email, HttpServletResponse response, Model model) throws Exception {
		Member findPW = new Member();
		findPW.setUserName(name);
		findPW.setUserId(id);
		findPW.setEmail(email);
		//임시 비밀번호 생성
		String pw = "";
		for (int i = 0; i < 12 ; i++) {
		}
		String encPassword = passwordEncoder.encode(pw);
		findPW.setUserPwd(encPassword);
		int result = memberService.updatePW(findPW);
		model.addAttribute("check", true);
		if(result>0) {
			findPW = memberService.findPW(findPW);
			//이메일 전송
			sendemail.setContent("회원님의 임시 비밀번호는 '" + pw + "'입니다.");
			sendemail.setReceiver(findPW.getEmail());
			sendemail.setSubject("<TUNA MUSIC> "+ findPW.getUserName() +"님의 임시 비밀번호입니다!");
			emailSender.SendEmail(sendemail);
			model.addAttribute("Msg", findPW.getUserName()+"님의 이메일로 임시 비밀번호를 발송하였습니다!");
			return "/member/loginPage";
		}else {
			model.addAttribute("Msg", "일치하는 회원정보가 없습니다.");
			return "/member/findIDPWPage";
		}
		
		
		
	}

	@RequestMapping("/mypage.do")
	public String showMyPage() {
		return "/member/myPage";
	}
	
	@RequestMapping("/edit.do")
	public String editProfile() {
		return "/member/editProfile";
	}
	
	@RequestMapping("/memberUpdate.do")
	public String updateMember(Member m, HttpServletRequest request, Model model,
			@RequestParam(name="photo", required=false) MultipartFile photo, @RequestParam(name="oldPhoto", required=false) String oldPhoto) {
		String filePath = request.getSession().getServletContext().getRealPath("\\resources\\uploadFiles");
		m.setProfileIMG("not profile img");//null값 에러 방지
		if(!photo.isEmpty()) {
			if(!oldPhoto.isEmpty()) {
				new File(filePath + "\\" + oldPhoto).delete();
				System.out.println("기존 사진 제거");
			}
			String originFileName = photo.getOriginalFilename();
			String changeName = CommonUtils.getRandomString();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String changeNameExt = changeName+ext;
			try {
				photo.transferTo(new File(filePath + "\\" + changeNameExt));
				m.setProfileIMG(changeNameExt);
				System.out.println("프로필 사진 업로드 성공");
			} catch (IllegalStateException | IOException e) {
				new File(filePath + "\\" + changeName + ext).delete();
				System.out.println("프로필 사진 업로드 실패");
			}
		}
		String encPassword = passwordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encPassword);
		int result = memberService.updateMember(m);
		System.out.println("업데이트 result : " + result);
		request.getSession().invalidate();
		model.addAttribute("Msg", "회원님의 정보가 변경되었습니다. 다시 로그인 해주세요!");
		return "/member/loginPage";
	}
	
	@RequestMapping("/memberDelete.do")
	public String deleteMember(@RequestParam(name="userId")String userId, @RequestParam(name="oldPhoto", required=false) String oldPhoto, HttpServletRequest request,  Model model) {
		String filePath = request.getSession().getServletContext().getRealPath("\\resources\\uploadFiles");
		if(!oldPhoto.isEmpty()) {
			new File(filePath + "\\" + oldPhoto).delete();
			System.out.println("프로필 사진 제거");
		}
		int result = memberService.deleteMember(userId);
		System.out.println(result);
		if(result > 0) {
			System.out.println("회원탈퇴 완료");
			model.addAttribute("Msg", "회원탈퇴 처리되었습니다.");
		}
		request.getSession().invalidate();
		return "/member/loginPage";
	}
	
}
