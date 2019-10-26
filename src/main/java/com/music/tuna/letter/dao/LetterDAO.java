package com.music.tuna.letter.dao;

import com.music.tuna.letter.vo.Letter;
import com.music.tuna.util.SqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LetterDAO {
    private SqlSession sqlSession;
    public LetterDAO(){
        sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
    }
    public void insertLetter(Letter vo){
        sqlSession.insert("LetterDAO.insertLetter", vo);
    }
    public List<Letter> selectList(Letter vo) {
        return sqlSession.selectList("LetterDAO.selectList", vo);
    }
    public void commit(){
        sqlSession.commit();
    }

}
