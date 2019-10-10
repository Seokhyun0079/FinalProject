package com.music.tuna.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession httpSession = request.getSession();
		System.out.println("loginpreHandle 호출");
		if(httpSession.getAttribute("loginUser") != null) {
			logger.info("login clear");
			httpSession.removeAttribute("loginUser");
		}
		
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		HttpSession httpSession = request.getSession();
		System.out.println("loginpostHandle 호출");
		ModelMap modelMap = modelAndView.getModelMap();
		Object loginUser = modelMap.get("loginUser");
		
		if ( loginUser != null ) {
			logger.info("new login success");
			httpSession.setAttribute("loginUser", loginUser);
			System.out.println("login 유저(인터셉터)" + loginUser);
		}
	}

	
	
}
