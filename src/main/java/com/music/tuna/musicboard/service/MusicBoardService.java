package com.music.tuna.musicboard.service;

import com.music.tuna.musicboard.vo.BoardArticleListRequest;
import com.music.tuna.musicboard.vo.MusicBoardArticle;

import java.util.List;

public interface MusicBoardService {
    public MusicBoardArticle insertArticle(MusicBoardArticle vo);
    public MusicBoardArticle getArticle(MusicBoardArticle vo);
    public List<MusicBoardArticle> getArticleList(BoardArticleListRequest vo);
    public int getCount();
}
