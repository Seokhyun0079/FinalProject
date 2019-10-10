package com.music.tuna.musicboard.vo;

import java.util.List;

public class MusicBoardArticleListPage {

    private int start;
    private int end;
    private int page;
    private int startPage;
    private int endPage;
    private List<MusicBoardArticle> pageContent;

    public List<MusicBoardArticle> getPageContent() {
        return pageContent;
    }

    public void setPageContent(List<MusicBoardArticle> pageContent) {
        this.pageContent = pageContent;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public int getStartPage() {
        return startPage;
    }

    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getEndPage() {
        return endPage;
    }

    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }

}
