package com.music.tuna.mymusic.vo;

import java.util.List;

public class MyMusicShareBoardArticleListPage {
    private int start;
    private int end;
    private int page;
    private int startPage;
    private int endPage;
    private List<MyMusicShareBoardArticle> pageContent;

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

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getStartPage() {
        return startPage;
    }

    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }

    public int getEndPage() {
        return endPage;
    }

    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }

    public List<MyMusicShareBoardArticle> getPageContent() {
        return pageContent;
    }

    public void setPageContent(List<MyMusicShareBoardArticle> pageContent) {
        this.pageContent = pageContent;
    }
}
