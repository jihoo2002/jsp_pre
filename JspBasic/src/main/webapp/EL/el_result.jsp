<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>
	
		#data1: <%= session.getAttribute("data1") %><br>
		#data2 : <%= application.getAttribute("data2") %>
	</p>
	
	<hr>
	<%--
        * EL에서 데이터를 참조할 때 영역을 명시하지 않는다면
        <수명이 짧은 순서부터 나열했움>
        page -> request -> session -> application
        
        <request는 요청을 수행하면 소멸>
        <applecation는 서버가 살아있는 동안 유효할 수 있음>
        순서대로 검색하여 찾아내 표현합니다.
        
        * 만약 서로 다른 내장 객체에 같은 이름의 데이터가 존재하는 경우
         내장객체명Scope.데이터이름 -> 특정 영역을 지목해서 가져올 수 있다.
     --%>
	<p>
		#data1: ${data1}<br>
		#data2: ${data2}
	</p>
</body>
</html>








