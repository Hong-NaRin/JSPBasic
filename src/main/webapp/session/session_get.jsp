<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션은 한 번 저장해 놓으면 만료되기 전 or 브라우저를 끄기 전까지 아무 곳에서나 사용 가능
	// 세션은 일반적으로 Object 타입으로 값을 저장하며, 객체를 가져올 때 명시적으로 원하는 타입으로 캐스팅 
	String user_id = (String)session.getAttribute("user_id"); // 키
	String user_name = (String)session.getAttribute("user_name");
	
	// 세션의 값을 삭제
	session.removeAttribute("user_name"); // user_name 세션 삭제
	
	// 세션의 값 전체 초기화
	session.invalidate(); // 세션 무효화
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	세션에 저장된 id : <%=user_id %><br>
	세션에 저장된 name : <%=user_name %><br>
	
</body>
</html>
