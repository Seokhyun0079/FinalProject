package com.music.tuna.musicboard.vo;

public class MusicBoardComment {
    private String id;
    private int articleNo;
    private int commentNo;
    private int replyNo;
    private String content;


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

    public int getCommentNo() {
        return commentNo;
    }

    public void setCommentNo(int commentNo) {
        this.commentNo = commentNo;
    }

    public int getReplyNo() {
        return replyNo;
    }

    public void setReplyNo(int replyNo) {
        this.replyNo = replyNo;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "MusicBoardComment{" +
                "id='" + id + '\'' +
                ", commentNo=" + articleNo +
                ", replyNo=" + replyNo +
                ", content='" + content + '\'' +
                '}';
    }
}
