<%@page import="com.model.DepartmentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// setAttribute로 req에 저장
	DepartmentDTO dto = new DepartmentDTO();
	dto.setDepartmentId(100);
	dto.setDepartmentName("IT");
	
	request.setAttribute("email", "aaa@naver.com");
	request.setAttribute("dto", dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>estAttribute로 저장된 값을 el태그로 사용하기</h3>
	${requestScope.email }<br>
	${requestScope.dto.departmentId }<br>
	${requestScope.dto.departmentName }<br>
	
	보통 requestScope는 생략하고 많이 쓴다
	${email }<br>
	${dto.departmentId }<br>
	${dto.departmentName }<br>
</body>
</html>
