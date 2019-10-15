package com.music.tuna.mymusic.vo;

public class MyMusic {
    private int listNum;
    private String id;
    private int articleNo;

    public int getListNum() {
        return listNum;
    }

    public void setListNum(int listNum) {
        this.listNum = listNum;
    }

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

    @Override
    public String toString() {
        return "MyMusic{" +
                "listNum=" + listNum +
                ", id='" + id + '\'' +
                ", articleNo=" + articleNo +
                '}';
    }
}
