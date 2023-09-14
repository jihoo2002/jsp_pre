package com.jsp.board.service;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.board.model.BoardRepository;
import com.jsp.board.model.BoardVO;

public class UpdateService implements IBoardService {
//보드 vo 객체 생성, 리스트 객체 인덱스 바꿔야함 
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	
	int bId = Integer.parseInt(	request.getParameter("boardNo"));
////	String writer = request.getParameter("writer");
////		String title = request.getParameter("title");
////		String content = request.getParameter("content");
////		LocalDateTime updateTime = LocalDateTime.now();
////		
////		BoardVO vo = new BoardVO(writer, title, content, updateTime);
////		
//		
		BoardVO vo = new BoardVO(
				request.getParameter("writer"),
				request.getParameter("title"),
				request.getParameter("content"),
				LocalDateTime.now()
				);
				
				
				
				
		
		
	BoardRepository.getInstance().update(vo,bId);
		
	}

}
