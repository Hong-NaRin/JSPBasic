<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>경로 ex01</h3>
	<!-- 
	경로의 개념은 2가지
	1. 상대 경로 : 내 위치로부터 찾아가는 상대적인 경로
	2. 절대 경로 :
	   - 전체 경로 ex) http://localhost:8181/JSPBasic/path/path_ex02.jsp
				또는 앞에 /를 붙임 ex) /JSPBasic/path/path_ex02.jsp
	-->
	
	<a href="path_ex02.jsp">상대경로 ex02</a>
	<a href="/JSPBasic/path/path_ex02.jsp">절대경로 ex02</a> 
	<!-- http://localhost:8181는 나의 pc이기 때문에 나에게로 갈 때는 생략 가능함 -->
	<!-- 상대방의 주소로 이동할 때는 전체경로를 적어야 함 -->
</body>
</html>
