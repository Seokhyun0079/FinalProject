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
    public void deleteMyMusic(MyMusic vo){
        sqlSession.delete("MyMusicDAO.deleteMyMusic", vo);
    }
    public void commit(){
        sqlSession.commit();
    }

    public int insertedMyMusicCount(MyMusic vo) {
        return sqlSession.selectOne("MyMusicDAO.insertedMyMusicCount", vo);
    }
	public void deleteAllMyMusic(MyMusic vo) {
		sqlSession.delete("MyMusicDAO.deleteAllMyMusic", vo);
	}
}
