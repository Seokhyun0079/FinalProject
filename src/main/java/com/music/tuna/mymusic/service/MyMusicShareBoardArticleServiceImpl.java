package com.music.tuna.mymusic.service;

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
        return myMusicShareBoardArticleDAO.selectLastInsertedArticleNo();
    }

    @Override
    public MyMusicShareBoardArticle selectArticleByArticleNo(MyMusicShareBoardArticle vo) {
        MyMusicShareBoardArticle myMusicShareBoardArticle = myMusicShareBoardArticleDAO.selectArticleByArticleNo(vo);
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
}
