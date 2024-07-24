<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button type="button" onclick="get()">get방식 ajax요청</button>
		
	<script>
		function get() {
			//get방식은 데이터를 쿼리스트링 으로 보냄
			fetch("hello.ajax?name=홍길동&age=20")
			.then(function(response) {
				return response.json();
			})
			.then(function(data) {
				console.log(data);
			})
		}
	</script>	
		
	<hr>
	<button type="button" onclick="post()">ajax포스트 요청</button>
	
	<script >
	
		function post() {
			fetch("bye.ajax", {
				method : "post",
				headers : {
					"Content-type" : "application/json"
					//"Content-Type": "application/x-www-form-urlencoded"
				},
				body : JSON.stringify({name: "홍길동", age : 20}) 
				//body : "name=홍길동&age=20"
			})
			.then(function(response) {
				return response.text();
			})
			.then(function(data) {
				console.log(data);
			})
		}
	</script>
</body>
</html>