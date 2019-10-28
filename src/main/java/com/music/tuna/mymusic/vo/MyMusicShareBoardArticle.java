package com.music.tuna.mymusic.vo;

import java.util.List;

public class MyMusicShareBoardArticle {
    private int articleNo;
    private String id;
    private String title;
    private String content;
    private int readCount;
    private int best;
    private int bad;
    private List<MyMusic> myMusicList;
    private int prev;
    private int next;
    private int commentCount;
    private String nickname;
    private String profileIMG;

    public String getProfileIMG() {
        return profileIMG;
    }

    public void setProfileIMG(String profileIMG) {
        this.profileIMG = profileIMG;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public int getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(int commentCount) {
        this.commentCount = commentCount;
    }

    public int getPrev() {
        return prev;
    }

    public void setPrev(int prev) {
        this.prev = prev;
    }

    public int getNext() {
        return next;
    }

    public void setNext(int next) {
        this.next = next;
    }

    public List<MyMusic> getMyMusicList() {
        return myMusicList;
    }

    public void setMyMusicList(List<MyMusic> myMusicList) {
        this.myMusicList = myMusicList;
    }

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

    public int getReadCount() {
        return readCount;
    }

    public void setReadCount(int readCount) {
        this.readCount = readCount;
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

    @Override
    public String toString() {
        return "MyMusicShareBoard{" +
                "articleNo=" + articleNo +
                ", id='" + id + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", readCont=" + readCount +
                ", best=" + best +
                ", bad=" + bad +
                ", myMusicList=" + myMusicList +
                '}';
    }
}
