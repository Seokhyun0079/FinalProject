package com.music.tuna.common;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class loginCheckInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession(false);
		if(session !=null) {
			Object obj = session.getAttribute("loginUser");
			if(obj != null) {
				return true;
			}
		}
		
		request.setAttribute("Msg", "로그인이 필요한 페이지입니다.");
		RequestDispatcher rd = request.getRequestDispatcher("loginPage.do");
		rd.forward(request, response);
		return false;
	}

	
	
}
