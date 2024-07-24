package com.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.ajax") // .ajax로 끝나는 요청 
public class AjaxController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doAction(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doAction(req, resp);
	}
	

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI(); //ip, port번호 제외된 주소
		String path = request.getContextPath(); //프로젝트 식별 이름
		String command = uri.substring( path.length() );
				
		System.out.println(command);
		
		
		if(command.equals("/ajax/hello.ajax")) {
			
			//get방식은 request.getParameter() 받으면 됨
			String name = request.getParameter("name");
			String age = request.getParameter("age");
			
			System.out.println("name:" + name + ", age:" + age);
			
			//데이터를 보낼때는
			response.setContentType("application/json"); // JSON 타입으로 응답
			
			PrintWriter out = response.getWriter();
			//out.println("{\"key\": \"이순신\" }"); //이 데이터에 대한 타입
			
			//JSONObject 또는 GSON 외부라이브러리
			//상세한 사용방법은 구글링
			JSONObject obj = new JSONObject();
			obj.put("name", "이순신");
			obj.put("age", "20");
			out.println(obj.toString());
		
		
		
		} else if(command.equals("/ajax/bye.ajax")) {
			
			//form형식으로 받기
//			String name = request.getParameter("name");
//			String age = request.getParameter("age");
//			System.out.println("name:" + name + ", age:" + age);
			
			
			//JOSN데이터 받기
			BufferedReader br = request.getReader();
			StringBuilder sb = new StringBuilder();
			
			String str = "";
			while( (str = br.readLine() ) != null ) {
				sb.append(str);
			}
			
			//System.out.println(sb.toString());
			
			try {
				JSONParser parser = new JSONParser();
				JSONObject object = (JSONObject)parser.parse(sb.toString());
									
				String name = (String)object.get("name"); //키값
				long age = (long)object.get("age"); //키값
				
				System.out.println(name );
				System.out.println(age );
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			//클라이언트로 응답은 OUT객체를 사용함.
			
			
		}
	}
}
