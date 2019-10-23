package com.music.tuna.mymusic.dao;

import com.music.tuna.mymusic.service.MyMusicShareBoardArticleService;
import com.music.tuna.util.SqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MyMusicShareBoardCommentDAO {
    SqlSession sqlSession;
    public MyMusicShareBoardCommentDAO(){
        sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
    }
    
}
