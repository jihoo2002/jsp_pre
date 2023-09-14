package com.jsp.board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.board.model.BoardRepository;
import com.jsp.board.model.BoardVO;

public class GetListService implements IBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		List<BoardVO> list = BoardRepository.getInstance().getList();
		//DB로부터 전달받은 글 목록을 세션에 넣기는 좀 아깝..
		//세션 -> 데이터를 계속 유지하기 위한 수단. -> 글목록 계속 유지해?? 왜?
		//글 목록은 한번 응답하면 더이상 필요없음 -> 계속 갱신되는 데이터이기에 !
		//응답이 나가면 자동으로 소멸되는 request 객체 사용하쟈 !
		request.setAttribute("boardList", list);

	}

}
