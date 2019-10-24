package com.music.tuna.mymusic.vo;

import java.util.List;

public class MyMusicShareBoardCommentPage {
    private List<MyMusicShareBoardComment> commentList;
    private int count;
    private int articleNo;

    public List<MyMusicShareBoardComment> getCommentList() {
        return commentList;
    }

    public void setCommentList(List<MyMusicShareBoardComment> commentList) {
        this.commentList = commentList;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getArticleNo() {
        return articleNo;
    }

    public void setArticleNo(int articleNo) {
        this.articleNo = articleNo;
    }
}
