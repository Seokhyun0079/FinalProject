package com.music.tuna.letter.vo;

public class Letter implements Comparable<Letter> {
    private int letterNo;
    private String fromId;
    private String toId;
    private String message;

    public int getLetterNo() {
        return letterNo;
    }

    public void setLetterNo(int letterNo) {
        this.letterNo = letterNo;
    }

    public String getFromId() {
        return fromId;
    }

    public void setFromId(String fromId) {
        this.fromId = fromId;
    }

    public String getToId() {
        return toId;
    }

    public void setToId(String toId) {
        this.toId = toId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public int compareTo(Letter vo) {
        if (this.letterNo < vo.getLetterNo()) {
            return -1;
        } else if (this.letterNo > vo.getLetterNo()) {
            return 1;
        }
        return 0;
    }

    @Override
    public String toString() {
        return "Letter{" +
                "letterNum=" + letterNo +
                ", fromId='" + fromId + '\'' +
                ", toId='" + toId + '\'' +
                ", message='" + message + '\'' +
                '}';
    }
}
