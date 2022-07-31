package com.mycompany.myapp.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public int insertBoard(BoardVO vo) {
		return boardDAO.insertBoard(vo);
	}
	
	@Override
	public int deleteBoard(int id) {
		return boardDAO.deleteBoard(id);
	}
	
	@Override
	public int updateBoard(BoardVO vo) {
		return boardDAO.updateBoard(vo);
	}
	
	@Override
	public BoardVO getBoard(int id) {
		return boardDAO.getBoard(id);
	}
	
	@Override
	public List<BoardVO> getBoardList() {
		return boardDAO.getBoardList();
	}
	
	@Override
	public List<BoardVO> getBoardList_cat(int cat) {
		return boardDAO.getBoardList_cat(cat);
	}
}