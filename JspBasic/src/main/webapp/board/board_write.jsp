<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>게시글 등록 페이지</h2>
	<form action="/JspBasic/regist.board" method="post">
		<input type = "text" name = "writer" placeholder="작성자"><br>
		<input type = "text" name = "title" placeholder="글 제목"><br>
		<textarea name= "content" rows="5" cols="30" placeholder="게시글 내용을 입력하세요."></textarea>
		<button type = "submit" onclick="return confirm('등록하시겠습니까?')">등록</button>
		<!--취소를 누르면 false가 submit으로 전달되어 submit이 동작하지 않음 true면 동작함 -->
	</form>
	
	
	
	
	
	
	
	
	
</body>
</html>