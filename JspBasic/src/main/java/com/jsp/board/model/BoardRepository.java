package com.jsp.board.model;

import java.util.ArrayList;
import java.util.List;

//우리가 DB를 안배워서
//DB 역할을 대신 할 List를 하나 선언해서 BoardVO 객체를 저장하겠습니다. 
public class BoardRepository {
	
	//외부에서 이 리스트에 직접 접근하지 못하게 하겠습니다. 
	private static final List<BoardVO> boardList = new ArrayList<>();
	
	//싱글톤 만듭니당
	private BoardRepository() {}
	
	private static BoardRepository repository = new BoardRepository();
	//겟 인스턴스를 통해 레파지토리 객체를 불러올 수 있다 = 싱글톤
	
	public static BoardRepository getInstance() {
		return repository; //싱글톤은 객체 생성을 단 하나로 제한함. 
	}
	
	//게시글 등록 메서드 (메서드로 접근해야 함)
	public void regist(BoardVO vo) {
		boardList.add(vo);
	}
	
	//전체 게시물(BoardList)을 담고 있는 리스트를 리턴
	public List<BoardVO> getList() {
		return boardList;
	}
	
}
