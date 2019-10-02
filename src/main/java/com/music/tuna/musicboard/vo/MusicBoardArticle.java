package com.music.tuna.musicboard.vo;

import org.springframework.web.multipart.MultipartFile;

public class MusicBoardArticle {
    private String title;
    private String filePath;
    private String text;
    private MultipartFile uploadFile;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
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

    @Override
    public String toString() {
        return "MusicBoardArticle{" +
                "title='" + title + '\'' +
                ", filePath='" + filePath + '\'' +
                ", text='" + text + '\'' +
                ", uploadFile=" + uploadFile +
                '}';
    }
}
