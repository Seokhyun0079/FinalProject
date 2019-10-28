package com.music.tuna.mymusic.service;

import com.music.tuna.musicboard.vo.MusicBoardArticle;
import com.music.tuna.mymusic.dao.MyMusicDAO;
import com.music.tuna.mymusic.dao.MyMusicShareBoardArticleDAO;
import com.music.tuna.mymusic.vo.MyMusic;
import com.music.tuna.mymusic.vo.MyMusicShareBoardArticle;
import com.music.tuna.mymusic.vo.MyMusicShareBoardArticleListPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MyMusicShareBoardArticleServiceImpl implements MyMusicShareBoardArticleService {
    @Autowired
    MyMusicShareBoardArticleDAO myMusicShareBoardArticleDAO;
    @Autowired
    MyMusicDAO myMusicDAO;
    @Override
    public int insertArticle(MyMusicShareBoardArticle vo) {
        myMusicShareBoardArticleDAO.insertArticle(vo);
        myMusicShareBoardArticleDAO.commit();
        return myMusicShareBoardArticleDAO.selectLastInsertedArticleNo(vo);
    }

    @Override
    public MyMusicShareBoardArticle selectArticleByArticleNo(MyMusicShareBoardArticle vo) {
        vo.setReadCount(myMusicShareBoardArticleDAO.getReadCount(vo)+1);
        myMusicShareBoardArticleDAO.getUpdateCount(vo);
        myMusicShareBoardArticleDAO.commit();
        MyMusicShareBoardArticle myMusicShareBoardArticle = myMusicShareBoardArticleDAO.selectArticleByArticleNo(vo);
        myMusicShareBoardArticle.setNext(myMusicShareBoardArticleDAO.selectNext(vo));
        myMusicShareBoardArticle.setPrev(myMusicShareBoardArticleDAO.selectPrev(vo));
        MyMusic myMusic = new MyMusic();
        myMusic.setId(myMusicShareBoardArticle.getId());
        myMusicShareBoardArticle.setMyMusicList(myMusicDAO.getMyMusicList(myMusic));
        return myMusicShareBoardArticle;
    }

    @Override
    public List<MyMusicShareBoardArticle> selectList(MyMusicShareBoardArticleListPage vo) {
        return myMusicShareBoardArticleDAO.selectList(vo);
    }

    @Override
    public int getCount() {
        return myMusicShareBoardArticleDAO.getCount();
    }

    @Override
    public void deleteArticle(MyMusicShareBoardArticle vo) {
        myMusicShareBoardArticleDAO.deleteArticle(vo);
    }

    @Override
    public void updateArticle(MyMusicShareBoardArticle vo) {
        myMusicShareBoardArticleDAO.updateArticle(vo);
    }

    @Override
    public int updateBest(MyMusicShareBoardArticle vo) {
        myMusicShareBoardArticleDAO.updateBest(vo);
        myMusicShareBoardArticleDAO.commit();
        return myMusicShareBoardArticleDAO.getBest(vo);
    }

    @Override
    public int updateBad(MyMusicShareBoardArticle vo) {
        myMusicShareBoardArticleDAO.updateBad(vo);
        myMusicShareBoardArticleDAO.commit();
        return myMusicShareBoardArticleDAO.getBad(vo);
    }
}
