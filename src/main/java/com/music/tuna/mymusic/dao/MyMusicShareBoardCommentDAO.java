package com.music.tuna.mymusic.dao;

import com.music.tuna.mymusic.service.MyMusicShareBoardArticleService;
import com.music.tuna.mymusic.vo.MyMusicShareBoardComment;
import com.music.tuna.mymusic.vo.MyMusicShareBoardCommentPage;
import com.music.tuna.util.SqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MyMusicShareBoardCommentDAO {
    SqlSession sqlSession;
    public MyMusicShareBoardCommentDAO(){
        sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
    }
    public void insertComment(MyMusicShareBoardComment vo){
        sqlSession.insert("MyMusicShareBoardCommentDAO.insertComment", vo);
    }
    public List<MyMusicShareBoardComment> selectList(MyMusicShareBoardCommentPage vo){
        return sqlSession.selectList("MyMusicShareBoardCommentDAO.selectList", vo);
    }
    public void commit(){
        sqlSession.commit();
    }
}
