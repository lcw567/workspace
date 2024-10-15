package com.kh.spring.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class LoginInterceptor implements HandlerInterceptor{

	/*
	 * HandlerInterceptor
	 * 
	 * - Controller가 실행되기 전/후에 낚아채서 실행된다.
	 * - 로그인 유/무 판단, 회원권한 체크
	 * 
	 * preHandle(전처리) : DispatcherServlet이 컨트롤러를 호출하기 전에 낚아채는 영역
	 * postHandler(후처리) : 컨트롤러에서 요청후 DispatcherServlet으로 view정보를 리턴하는 순간 낚아채는 영역
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//return : true -> 기존요청흐름대로 진행(Controller로 이동)
		//return : false -> 요청중단후 반환
		
		HttpSession session = request.getSession();
		if(session.getAttribute("loginUser") != null) {
			return true;
		} else {
			session.setAttribute("alertMsg", "로그인 후 이용가능한 서비스입니다.");
			response.sendRedirect(request.getContextPath());
			return false;
		}
	}

}
