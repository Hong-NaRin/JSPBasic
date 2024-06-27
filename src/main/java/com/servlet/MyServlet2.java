package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

// 서블릿을 연결하는 방법 2. web.xml로 연결하기
// 어노테이션이나 web.xml 둘 중 '하나'만 사용할 수 있음

public class MyServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public MyServlet2() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
