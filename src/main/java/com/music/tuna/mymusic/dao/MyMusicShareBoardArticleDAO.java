package com.music.tuna.mymusic.dao;

import com.music.tuna.mymusic.vo.MyMusicShareBoardArticle;
import com.music.tuna.util.SqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MyMusicShareBoardArticleDAO {
    SqlSession sqlSession;
    public MyMusicShareBoardArticleDAO(){
        sqlSession =SqlSessionFactoryBean.getSqlSessionInstance();
    }
    public int insertArticle(MyMusicShareBoardArticle vo){
        return sqlSession.insert("MyMusicShareBoardArticleDAO.insertArticle", vo);
    }
    public int selectLastInsertedArticleNo(){
        return sqlSession.selectOne("MyMusicShareBoardArticleDAO.selectLastInsertedArticleNo");
    }
    public MyMusicShareBoardArticle selectArticleByArticleNo(MyMusicShareBoardArticle vo){
        return sqlSession.selectOne("MyMusicShareBoardArticleDAO.selectArticleByArticleNo", vo);
    }
    public void commit(){
        sqlSession.commit();
    }
}
