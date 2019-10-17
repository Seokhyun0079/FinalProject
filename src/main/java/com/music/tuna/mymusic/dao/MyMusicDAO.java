package com.music.tuna.mymusic.dao;

import com.music.tuna.mymusic.vo.MyMusic;
import com.music.tuna.util.SqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MyMusicDAO {
    SqlSession sqlSession;
    public MyMusicDAO(){
        this.sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
    }
    public List<MyMusic> getMyMusicList(MyMusic vo){
        return sqlSession.selectList("MyMusicDAO.selectMyMusicList", vo);
    }
    public void insertMyMusic(MyMusic vo){
        sqlSession.insert("MyMusicDAO.insertMyMusic", vo);
    }
    private int getMusicMaximum(MyMusic vo){
        return sqlSession.selectOne("MyMusicDAO.getMyMusicMaximum", vo);
    }
    public void commit(){
        sqlSession.commit();
    }
}
