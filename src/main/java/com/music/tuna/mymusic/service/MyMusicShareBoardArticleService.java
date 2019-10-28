package com.music.tuna.mymusic.service;

import com.music.tuna.mymusic.vo.MyMusicShareBoardArticle;
import com.music.tuna.mymusic.vo.MyMusicShareBoardArticleListPage;

import java.util.List;

public interface MyMusicShareBoardArticleService {
    int insertArticle(MyMusicShareBoardArticle vo);
    MyMusicShareBoardArticle selectArticleByArticleNo(MyMusicShareBoardArticle vo);
    List<MyMusicShareBoardArticle> selectList(MyMusicShareBoardArticleListPage vo);
    int getCount();
}
