package com.music.tuna.musicboard.service;

import com.music.tuna.musicboard.vo.MusicBoardArticleListPage;
import com.music.tuna.musicboard.vo.MusicBoardArticle;

import java.util.List;

public interface MusicBoardArticleService {
    public int insertArticle(MusicBoardArticle vo);
    public MusicBoardArticle getArticle(MusicBoardArticle vo);
    public List<MusicBoardArticle> getArticleList(MusicBoardArticleListPage vo);
    int updateBest(MusicBoardArticle vo);
    int updateBad(MusicBoardArticle vo);
    public int getCount();
    List<MusicBoardArticle> getMyWrittenList(MusicBoardArticle vo);
    void deleteArticle(MusicBoardArticle vo);
    void updateArticle(MusicBoardArticle vo);
}
