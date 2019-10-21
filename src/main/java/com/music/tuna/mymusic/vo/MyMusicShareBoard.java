package com.music.tuna.mymusic.vo;

public class MyMusicShareBoard {
    private int articleNo;
    private String id;
    private String title;
    private String content;
    private int readCont;
    private int best;
    private int bad;

    public int getArticleNo() {
        return articleNo;
    }

    public void setArticleNo(int articleNo) {
        this.articleNo = articleNo;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getReadCont() {
        return readCont;
    }

    public void setReadCont(int readCont) {
        this.readCont = readCont;
    }

    public int getBest() {
        return best;
    }

    public void setBest(int best) {
        this.best = best;
    }

    public int getBad() {
        return bad;
    }

    public void setBad(int bad) {
        this.bad = bad;
    }
}
