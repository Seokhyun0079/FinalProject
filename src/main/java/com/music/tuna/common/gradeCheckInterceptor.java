package com.music.tuna.common;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.music.tuna.member.model.vo.Member;

public class gradeCheckInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession(false);
		if(session != null) {
			Member m = (Member)session.getAttribute("loginUser");
			if(!m.getGrade().equals("C")) {
				return true;
			}
		}
		request.setAttribute("Msg", "유료회원 전용 페이지입니다. 결제 후 이용해 주세요!");
		RequestDispatcher rd = request.getRequestDispatcher("/payment.do");
		rd.forward(request, response);
		return false;
	}

	
	
	
	
}
