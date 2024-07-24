package com.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 서블릿
// 1. 확장자 패턴 *.do
@WebServlet("*.test")
public class TextController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	public TextController() {
	}
	// 2. get요청, post요청을 하나(doAction)로 모음
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 3. 요청을 분기
		request.setCharacterEncoding("utf-8"); // 한글 처리
		
		String uri = request.getRequestURI(); // ip, port 제외된 주소
		String path = request.getContextPath(); // 프로젝틑 식별 이름	
		String command = uri.substring(path.length());
		
		System.out.println(command);   
		
		if(command.equals("/controller/signup.test")) {
			// 회원가입 요청처리...
		}
		else if (command.equals("/controller/login.test")) {
			// 로그인 요청처리..
		}
	}
}

	
