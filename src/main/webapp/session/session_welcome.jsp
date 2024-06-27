<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%
	// 이 페이지는 세션이 있는 사람(로그인한 사람)만 들어올 수 있는 페이지
	// 로그인이 안된 사람은 접근하지 못하도록
	if(session.getAttribute("id") == null) { // 세션 만료된 사람
		response.sendRedirect("session_ex01.jsp");
	}
		
	// 세션에 저장된 값을 얻는다
	String name = (String)session.getAttribute("name");
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	로그인 성공<br>
	<%=id %>(<%=name %>)님 환영합니다<br>
	<a href="session_logout.jsp" method="post">로그아웃</a>
</body>
</html>
