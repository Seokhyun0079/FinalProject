package com.music.tuna.musicboard.dao;

import com.music.tuna.musicboard.vo.MusicBoardComment;
import com.music.tuna.musicboard.vo.MusicBoardCommentPage;
import com.music.tuna.util.SqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MusicBoardCommentDAO {
    SqlSession sqlSession;
    public MusicBoardCommentDAO (){
        this.sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
    }
    public void insertComment(MusicBoardComment vo){
        sqlSession.insert("MusicBoardCommentDAO.insertComment", vo);
        commit();
    }
    public void getCount(){

    }
    public List<MusicBoardComment> getCommentList(MusicBoardCommentPage vo){
        return sqlSession.selectList("MusicBoardCommentDAO.selectCommentList", vo);
    }
    public void commit(){
        sqlSession.commit();
    }
}
