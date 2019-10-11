package com.music.tuna.musicboard.service;

import com.music.tuna.musicboard.vo.MusicBoardArticleListPage;
import com.music.tuna.musicboard.vo.MusicBoardArticle;

import java.util.List;

public interface MusicBoardArticleService {
    public MusicBoardArticle insertArticle(MusicBoardArticle vo);
    public MusicBoardArticle getArticle(MusicBoardArticle vo);
    public List<MusicBoardArticle> getArticleList(MusicBoardArticleListPage vo);
    public int getCount();
}
