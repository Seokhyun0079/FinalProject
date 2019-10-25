package com.music.tuna.qnaboard.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.music.tuna.qnaboard.vo.QnaBoardComment;
import com.music.tuna.qnaboard.vo.QnaBoardCommentPage;
import com.music.tuna.util.SqlSessionFactoryBean;

@Repository
public class QnaBoardCommentDao {
	
	SqlSession sqlSession;
	public QnaBoardCommentDao() {
		this.sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	public void insertComment(QnaBoardComment vo) {
		sqlSession.insert("QnaBoardCommnetDao.insertComment", vo);
	}
	
	public void getCount() {
		
	}
	
	public List<QnaBoardComment> getCommentList(QnaBoardCommentPage vo) {
		return sqlSession.selectList("QnaBoardCommentDao.selectCommentList", vo);
	}
	
	public void commit() {
		sqlSession.commit();
	}

}
