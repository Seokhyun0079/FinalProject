package com.music.tuna.crowdFunding.model.vo;

import java.util.List;

public class FundingList {
    //페이지에서 보여줄 리스트의 첫번째 번호
    private int start;
    //페이지에서 보여줄 리스트의 마지막 번호
    private int end;
    //현재 페이지
    private int page;
    //표시할 페이지 중 첫번째 페이지
    private int startPage;
    //표시할 페이지중 마지막 페이지
    private int endPage;
    private List<Funding> pageContent;

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

    public List<Funding> getPageContent() {
        return pageContent;
    }

    public void setPageContent(List<Funding> pageContent) {
        this.pageContent = pageContent;
    }

    @Override
    public String toString() {
        return "FundingList{" +
                "start=" + start +
                ", end=" + end +
                ", page=" + page +
                ", startPage=" + startPage +
                ", endPage=" + endPage +
                ", pageContent=" + pageContent +
                '}';
    }
}
