package com.music.tuna.mymusic.service;

import com.music.tuna.mymusic.vo.MyMusicShareBoardArticle;

public interface MyMusicShareBoardArticleService {
    int insertArticle(MyMusicShareBoardArticle vo);
    MyMusicShareBoardArticle selectArticleByArticleNo(MyMusicShareBoardArticle vo);
}
