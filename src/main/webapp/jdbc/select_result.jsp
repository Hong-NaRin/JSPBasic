<%@page import="com.model.DepartmentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// 받을 값은 없음
	// DAO객체 생성
	// new DepartmentDAO(); 불가
	DepartmentDAO dao = DepartmentDAO.getInstance(); // 싱글톤 객체생성
	ArrayList<DepartmentDTO> list = dao.getList(); // 부서 조회 메서드 호출
	
	// 리스트 다음 페이지로 전달
	request.setAttribute("list", list); // request에 저장
	
	// forward로 결과 화면 이동시키기
	request.getRequestDispatcher("select_list.jsp").forward(request, response);
%>

