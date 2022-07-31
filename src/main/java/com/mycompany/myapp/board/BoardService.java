package com.mycompany.myapp.board;

import java.util.List;

public interface BoardService {
	public int insertBoard(BoardVO vo);

	public int deleteBoard(int id);

	public int updateBoard(BoardVO vo);

	public BoardVO getBoard(int id);

	public List<BoardVO> getBoardList();

	public List<BoardVO> getBoardList_cat(int cat);
	
}