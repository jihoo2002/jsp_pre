<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 자바는 액션을 통해 직접 경로로 찾아가지 못함, 가상 경로를 만들어야 함 -->
	<form action = "/JspBasic/basic" method="post">
		#아이디: <input type = "text" name = "account"> <br>
		#비밀번호: <input type = "password" name = "password"> <br>
		#이름: <input type = "text" name = "name"> <br>
		<input type = "submit" value = "확인">
	<!-- name은 웹에서 값을 받기 위해 꼭 작성해줘야 함 -->
	</form>
	<!-- 
	post는 사용자 입력값을 숨겨서 가져오는 과정에서 한글이 깨짐
	
	 -->
</body>
</html>











