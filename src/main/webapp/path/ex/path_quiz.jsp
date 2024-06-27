<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>경로 공부하기</h3>
	<!-- a태그로 jspTag 폴더에 include페이지로 상대경로, 절대경로로 이동 -->
	<a href="../../JspTag/include.jsp">include 상대경로</a>
	<a href="/JSPBasic/JspTag/include.jsp">include 절대경로</a><br>

	<!-- MyServlet 맵핑 경로는 /JSPBasic/apple이며, 상대경로로 이동 -->
	<a href="../../apple">MyServlet 상대경로</a>
	<a href="/JSPBasic/apple">MyServlet 절대경로</a><br>
	
	<!-- html안에 있는 이미지 파일을 img태그 상대경로, 절대경로 참조 -->
	<img alt="이미지 상대경로" src="../../html/img/img1.jpg" height="200" weight="200">
	<img alt="이미지 절대경로" src="/JSPBasic/html/img/img2.jpg" height="200" weight="200">
	
</body>
</html>
