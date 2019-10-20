package com.music.tuna.musicboard.service;

import com.music.tuna.musicboard.dao.MusicBoardArticleDAO;
import com.music.tuna.musicboard.vo.MusicBoardArticleListPage;
import com.music.tuna.musicboard.vo.MusicBoardArticle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MusicBoardArticleServiceImpl implements MusicBoardArticleService {
    @Autowired
    MusicBoardArticleDAO musicBoardArticleDAO;
    @Override
    public MusicBoardArticle insertArticle(MusicBoardArticle vo){
        musicBoardArticleDAO.insertArticle(vo);
        MusicBoardArticle newArticle =  musicBoardArticleDAO.lastInsertedArticle();
        musicBoardArticleDAO.commit();
        return newArticle;
    }

    @Override
    public MusicBoardArticle getArticle(MusicBoardArticle vo) {
        vo.setReadCount(musicBoardArticleDAO.getReadCount(vo)+1);
        musicBoardArticleDAO.increaseReadCount(vo);
        MusicBoardArticle newItem = musicBoardArticleDAO.getArticle(vo);
        newItem.setPrev(musicBoardArticleDAO.getPrevArticleNo(vo));
        newItem.setNext(musicBoardArticleDAO.getNextArticleNo(vo));
        commit();
        return newItem;
    }

    @Override
    public List<MusicBoardArticle> getArticleList(MusicBoardArticleListPage vo) {
        return musicBoardArticleDAO.getArticleList(vo);
    }
    @Override
    public int getCount() {
        return musicBoardArticleDAO.getCount();
    }

    @Override
    public int updateBest(MusicBoardArticle vo) {
        musicBoardArticleDAO.updateBest(vo);
        commit();
        return musicBoardArticleDAO.getBest(vo);
    }

    @Override
    public int updateBad(MusicBoardArticle vo) {
        musicBoardArticleDAO.updateBad(vo);
        commit();
        return musicBoardArticleDAO.getBad(vo);
    }

    public void commit(){ musicBoardArticleDAO.commit();}
}
