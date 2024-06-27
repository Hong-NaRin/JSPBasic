<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>입력양식</h3>
	<!-- action에는 데이터를 전송할 주소를 적는다 -->
	<!-- input태그가 가져야 될 값을 지정하려면 value=""를 쓰면 됨, 값이 따로 없으면 기본값 지정 -->
	<!-- 예를 들어 checkbox, radio, select 등등 -->
	<form action="req_ex02.jsp">
		닉네임: <input type="text" name="nick"><br>
		취미:<br>
		<input type="checkbox" name="hobby" value="A">코딩하기<br>
		<input type="checkbox" name="hobby" value="B">잠자기<br>
		<input type="checkbox" name="hobby" value="C">집에가기<br>
		
		사는 곳:
		<select name="region">
			<option value="경기도">경기도</option>
			<option value="서울시">서울시</option>
			<option value="인천시">인천시</option>
		</select>
	
		<input type="submit" value="전송">
	</form>
</body>
</html>
