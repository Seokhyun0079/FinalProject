package com.music.tuna.musicboard.vo;

import java.util.List;

public class MusicBoardCommentPage {
    private List<MusicBoardComment> commentList;
    private int count;
    private int articleNo;

    public List<MusicBoardComment> getCommentList() {
        return commentList;
    }

    public void setCommentList(List<MusicBoardComment> commentList) {
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

    @Override
    public String toString() {
        return "MusicBoardCommentPage{" +
                "commentList=" + commentList +
                ", count=" + count +
                ", articleNo=" + articleNo +
                '}';
    }
}
