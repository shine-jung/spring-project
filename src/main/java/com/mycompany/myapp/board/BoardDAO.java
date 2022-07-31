package com.mycompany.myapp.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertBoard(BoardVO vo) {
		int result = sqlSession.insert("Board.insertBoard", vo);
		return result;
	}

	public int deleteBoard(int id) {
		int result = sqlSession.delete("Board.deleteBoard", id);
		return result;
	}

	public int updateBoard(BoardVO vo) {
		int result = sqlSession.update("Board.updateBoard", vo);
		return result;
	}

	public BoardVO getBoard(int id) {
		BoardVO result = sqlSession.selectOne("Board.getBoard", id);
		return result;
	}

	public List<BoardVO> getBoardList() {
		List<BoardVO> result = sqlSession.selectList("Board.getBoardList");
		return result;
	}
	
	public List<BoardVO> getBoardList_cat(int cat) {
		List<BoardVO> result = sqlSession.selectList("Board.getBoardList_cat",cat);
		return result;
	}

	
}
