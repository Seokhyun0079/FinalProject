package com.music.tuna.musicboard.dao;

import com.music.tuna.util.SqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSession;

public class MusicBoardCommentDAO {
    SqlSession sqlSession;
    public MusicBoardCommentDAO (){
        this.sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
    }
    public void insertComment(){
        
    }
}
