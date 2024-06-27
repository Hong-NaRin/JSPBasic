<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 
그냥 include하면 head와 body가 중복되기 때문에 다 쳐내고 몸통만 사용
잘라낸 머리와 꼬리를 본문에 합치기
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
-->	
	<%@ include file="header.jsp" %> 
	여기는 본문입니다
	<%@ include file="footer.jsp" %>
<!-- 
</body>
</html> 
-->
