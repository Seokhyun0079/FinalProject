package com.music.tuna.qnaboard.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.music.tuna.musicboard.vo.MusicBoardArticle;
import com.music.tuna.musicboard.vo.MusicBoardArticleListPage;
import com.music.tuna.qnaboard.vo.QnaBoardArticle;
import com.music.tuna.qnaboard.vo.QnaBoardArticleListPage;
import com.music.tuna.util.SqlSessionFactoryBean;

@Repository
public class QnaBoardArticleDao {
    SqlSession sqlSession;
    public QnaBoardArticleDao(){
        this.sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
    }
    public void insertArticle(QnaBoardArticle vo){
        sqlSession.insert("QnaBoardArticleDao.insertArticle", vo);
    }
    public int lastInsertedArticle(QnaBoardArticle vo){
        return sqlSession.selectOne("QnaBoardArticleDao.lastInsertedArticle", vo);
    }
    public QnaBoardArticle getArticle(QnaBoardArticle vo){
        return sqlSession.selectOne("QnaBoardArticleDao.selectArticleByArticleNo", vo);
    }
    public int getCount(){
        return sqlSession.selectOne("QnaBoardArticleDao.selectArticleCount");
    }
    public List<QnaBoardArticle> getArticleList(QnaBoardArticleListPage vo){
        return sqlSession.selectList("QnaBoardArticleDao.selectArticleList", vo);
    }
    public int getReadCount(QnaBoardArticle vo){
        return sqlSession.selectOne("QnaBoardArticleDao.getReadCount", vo);
    }
    public void increaseReadCount(QnaBoardArticle vo){
        sqlSession.update("QnaBoardArticleDao.updateReadCount", vo);
    }
    public int getPrevArticleNo(QnaBoardArticle vo){
        return sqlSession.selectOne("QnaBoardArticleDao.getPrevArticleNo", vo);
    }
    public int getNextArticleNo(QnaBoardArticle vo){
        return sqlSession.selectOne("QnaBoardArticleDao.getNextArticleNo", vo);
    }
    
    public List<QnaBoardArticle> getNoticeArticleList(QnaBoardArticleListPage vo){
        return sqlSession.selectList("QnaBoardArticleDao.selectNoticeArticleList");
    }
    
    public List<QnaBoardArticle> getAllArticleList(QnaBoardArticleListPage vo){
        return sqlSession.selectList("QnaBoardArticleDao.selectAllArticleList", vo);
    }
    
    public void commit(){
        sqlSession.commit();
    }
}
