package com.music.tuna.musicboard.dao;

import com.music.tuna.musicboard.vo.MusicBoardArticle;
import com.music.tuna.util.SqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MusicBoardArticleDAO {
    SqlSession sqlSession;
    public MusicBoardArticleDAO(){
        this.sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
    }
    public void insertArticle(MusicBoardArticle vo){
        sqlSession.insert("MusicBoardArticleDAO.insertArticle", vo);
    }
    public void commit(){
        sqlSession.commit();
    }
}
