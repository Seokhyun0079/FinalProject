package com.music.tuna.magazineBoard.model.dao;


import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.music.tuna.magazineBoard.model.vo.MagazineBoard;
import com.music.tuna.magazineBoard.model.vo.PageInfo;
import com.music.tuna.util.SqlSessionFactoryBean;

@Repository
public class MagazineBoardDAO {

	SqlSession sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	
	
	
	public int getListCount() {
		return sqlSession.selectOne("Magazinemapper.getListCount");
	
		
	}

	public ArrayList<MagazineBoard> selectList(PageInfo pi) {
		
		
		 int offset = (pi.getCurrentPage()-1)* pi.getBoardLimit();
		 RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("Magazinemapper.selectList", null, rowBounds);
	}

	public void addReadCount(int mseq) {
		sqlSession.update("Magazinemapper.addmReadCount", mseq);
	}

	
	public MagazineBoard selectBoard(int mseq) {
		
		return sqlSession.selectOne("Magazinemapper.selectBoard", mseq);
	}




	

}
