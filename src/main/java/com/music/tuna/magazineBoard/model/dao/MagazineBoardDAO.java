package com.music.tuna.magazineBoard.model.dao;


import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
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

	

}
