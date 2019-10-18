package com.music.tuna.mymusic.vo;

public class MyMusic {
    private String id;
    private int articleNo;
    private String title;
    private String text;
    private String fileName;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getArticleNo() {
        return articleNo;
    }

    public void setArticleNo(int articleNo) {
        this.articleNo = articleNo;
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

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    @Override
    public String toString() {
        return "MyMusic{" +
                "id='" + id + '\'' +
                ", articleNo=" + articleNo +
                ", title='" + title + '\'' +
                ", text='" + text + '\'' +
                ", fileName='" + fileName + '\'' +
                '}';
    }
}
