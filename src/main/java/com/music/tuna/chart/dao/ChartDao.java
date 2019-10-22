package com.music.tuna.chart.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.music.tuna.chart.vo.Chart;
import com.music.tuna.util.SqlSessionFactoryBean;

@Repository
public class ChartDao {
	SqlSession sqlSession;
	
	public ChartDao() {
		this.sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	public Chart selectById(Chart vo) {
		return sqlSession.selectOne("ChartDao.selectById", vo);
	}
	
	public List<Chart> selectRealTime() {
		return sqlSession.selectList("ChartDao.selectRealTime");
	}
	
	public void insertChart(Chart vo) {
		sqlSession.insert("ChartDao.insertChart", vo);
	}
	
	public void updateChart(Chart vo) {
		sqlSession.update("ChartDao.updateChart", vo);
	}
	public void commit(){
		sqlSession.commit();
	}

}
