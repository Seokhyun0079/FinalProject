package com.music.tuna.mymusic.service;

import com.music.tuna.musicboard.vo.MusicBoardArticle;
import com.music.tuna.mymusic.vo.MyMusicShareBoardArticle;
import com.music.tuna.mymusic.vo.MyMusicShareBoardArticleListPage;

import java.util.List;

public interface MyMusicShareBoardArticleService {
    int insertArticle(MyMusicShareBoardArticle vo);
    MyMusicShareBoardArticle selectArticleByArticleNo(MyMusicShareBoardArticle vo);
    List<MyMusicShareBoardArticle> selectList(MyMusicShareBoardArticleListPage vo);
    int getCount();
    void deleteArticle(MyMusicShareBoardArticle vo);
    void updateArticle(MyMusicShareBoardArticle vo);
    int updateBest(MyMusicShareBoardArticle vo);
    int updateBad(MyMusicShareBoardArticle vo);
}
