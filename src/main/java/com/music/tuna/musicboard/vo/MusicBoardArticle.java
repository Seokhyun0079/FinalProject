package com.music.tuna.musicboard.vo;

import org.springframework.web.multipart.MultipartFile;

public class MusicBoardArticle {
    private int articleNo;
    private String id;
    private String title;
    private String fileName;
    private String text;
    private MultipartFile uploadFile;

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

    @Override
    public String toString() {
        return "MusicBoardArticle{" +
                "articleNo=" + articleNo +
                ", id='" + id + '\'' +
                ", title='" + title + '\'' +
                ", fileName='" + fileName + '\'' +
                ", text='" + text + '\'' +
                ", uploadFile=" + uploadFile +
                '}';
    }
}
