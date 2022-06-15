package com.spring.service;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.dto.BoardVO;
import com.spring.dao.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private SqlSession sqlSession;


	@Override
	public void regist(BoardVO board) throws Exception {
		BoardDAO dao=sqlSession.getMapper(BoardDAO.class);
		dao.create(board);
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {
		BoardDAO dao=sqlSession.getMapper(BoardDAO.class);
		return dao.read(bno);
	}

	@Override
	public void modify(BoardVO board) throws Exception {
		BoardDAO dao=sqlSession.getMapper(BoardDAO.class);
		dao.update(board);
	}

	@Override
	public void remove(Integer bno) throws Exception {
		BoardDAO dao=sqlSession.getMapper(BoardDAO.class);
		dao.delete(bno);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		BoardDAO dao=sqlSession.getMapper(BoardDAO.class);
		List<BoardVO> dtos=dao.listAll();
		System.out.println(dtos);
		return dtos;
	}

	@Override
	public void viewcnt(Integer bno) throws Exception {
		BoardDAO dao=sqlSession.getMapper(BoardDAO.class);
		dao.viewcnt(bno);
	}
}
