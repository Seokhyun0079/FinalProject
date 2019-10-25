package com.music.tuna.letter.vo;

public class Letter {
    private int letterNum;
    private String fromId;
    private String toId;
    private String message;

    public int getLetterNum() {
        return letterNum;
    }

    public void setLetterNum(int letterNum) {
        this.letterNum = letterNum;
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
}
