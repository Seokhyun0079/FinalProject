package com.music.tuna.musicboard.vo;

import org.springframework.web.multipart.MultipartFile;

public class MusicBoardArticle {
    private int articleNo;
    private String id;
    private String title;
    private String fileName;
    private String text;
    //조인을 통해 연결한 값
    private int readCount;
    //실제론 테이블에 들어가지 않는 값들
    private int start;
    private int last;
    private int page;
    private int commentCount;
    private MultipartFile uploadFile;
    private int prev;
    private int next;
    private int best;
    private int bad;

    public int getBad() {
        return bad;
    }

    public void setBad(int bad) {
        this.bad = bad;
    }

    public int getBest() {
        return best;
    }

    public void setBest(int best) {
        this.best = best;
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

    public int getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(int commentCount) {
        this.commentCount = commentCount;
    }

    public int getReadCount() {
        return readCount;
    }

    public void setReadCount(int readCount) {
        this.readCount = readCount;
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

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public MultipartFile getUploadFile() {
        return uploadFile;
    }

    public void setUploadFile(MultipartFile uploadFile) {
        this.uploadFile = uploadFile;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getLast() {
        return last;
    }

    public void setLast(int last) {
        this.last = last;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    @Override
    public String toString() {
        return "MusicBoardArticle{" +
                "articleNo=" + articleNo +
                ", id='" + id + '\'' +
                ", title='" + title + '\'' +
                ", fileName='" + fileName + '\'' +
                ", text='" + text + '\'' +
                ", start=" + start +
                ", last=" + last +
                ", page=" + page +
                ", readCount=" + readCount +
                ", commentCount=" + commentCount +
                ", uploadFile=" + uploadFile +
                ", prev=" + prev +
                ", next=" + next +
                ", best=" + best +
                ", bad=" + bad +
                '}';
    }
}
