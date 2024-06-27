<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// application 내장 객체는 session 사용문법과 동일함
	// 생명주기 - was를 시작할 때 전역에서 단 1개 생성된다
	// 프로그램 전역에서 사용할 값들을 저장해 놓을 수 있다
	int total = 0;
	
	// application객체에 값이 있으면 가져옴
	if(application.getAttribute("total") != null) {
		total = (int)application.getAttribute("total");
		// application으로 입력하면 서버를 종료할 때까지 값이 유지되고,
		// session으로 입력하면 브라우저가 종료되면 초기화됨
	}
	total++;

	application.setAttribute("total", total);
	// 값의 사용
	// int result = (int)application.getAttribute("total");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	결과: <%=total %>
	<% if(total == 777) { %>
		<p>축하드립니다. 커피 한잔 당첨</p>
	<% } %>	
</body>
</html>
