package com.music.tuna.mymusic.service;

import com.music.tuna.mymusic.vo.MyMusicShareBoardArticle;

import java.util.List;

public interface MyMusicShareBoardArticleService {
    int insertArticle(MyMusicShareBoardArticle vo);
    MyMusicShareBoardArticle selectArticleByArticleNo(MyMusicShareBoardArticle vo);
    List<MyMusicShareBoardArticle> selectList(MyMusicShareBoardArticle vo);
}
