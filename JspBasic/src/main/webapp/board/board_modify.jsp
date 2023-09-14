<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>${boardNo}번 게시물 내용 수정</h2>	
	<form action="/JspBasic/update.board" method="post">
		<input type = "hidden" name = "boardNo" value= "${boardNo}" readonly>
		<!-- hidden ->태그 숨김 but 폼 안에는 존재, 폼 안에 번호가 존재해야 수정된 내용을 저장할 수 있음-->
		<p>
		 	#작성자: <input type = "text" name= "writer" value= "${article.writer}"><br>
		 	#제목: <input type = "text" name = "title" value= "${article.title}"><br>
		 	#내용: <textarea rows="3" name = "content">${article.content}</textarea>
		 	<input type = "submit" value= "수정">
		 	
		</p>
	
	
	</form>
</body>
</html>









