package com.music.tuna.crowdFunding.model.vo;

import org.springframework.web.multipart.MultipartFile;
import java.sql.Date;

public class Funding {

    private int fno;            // 펀딩 프로젝트 번호
    private String fTitle;      // 펀딩 프로젝트명
    private String fReward;     // 펀딩 리워드
    private String fContent;    // 프로젝트설명
    private String fCreator;       // 팀(창작자)명
    private String fCreatorInfo;   // 팀 소개글
    private int fBacker;        // 후원자 수
    private int fGoal;          // 목표 금액
    private int fAmount;        // 누적 금액
    private Date regDate;       // 등록 날짜
    private Date endDate;       // 마감 날짜
    private MultipartFile fuploadFile;  // 리워드 이미지

    public Funding(int fno, String fTitle, String fReward, String fContent, String fCreator, String fCreatorInfo, int fBacker, int fGoal, int fAmount, Date regDate, Date endDate, MultipartFile fuploadFile) {
        this.fno = fno;
        this.fTitle = fTitle;
        this.fReward = fReward;
        this.fContent = fContent;
        this.fCreator = fCreator;
        this.fCreatorInfo = fCreatorInfo;
        this.fBacker = fBacker;
        this.fGoal = fGoal;
        this.fAmount = fAmount;
        this.regDate = regDate;
        this.endDate = endDate;
        this.fuploadFile = fuploadFile;
    }

    public int getFno() {
        return fno;
    }

    public void setFno(int fno) {
        this.fno = fno;
    }

    public String getfTitle() {
        return fTitle;
    }

    public void setfTitle(String fTitle) {
        this.fTitle = fTitle;
    }

    public String getfReward() {
        return fReward;
    }

    public void setfReward(String fReward) {
        this.fReward = fReward;
    }

    public String getfContent() {
        return fContent;
    }

    public void setfContent(String fContent) {
        this.fContent = fContent;
    }

    public String getfCreator() {
        return fCreator;
    }

    public void setfCreator(String fCreator) {
        this.fCreator = fCreator;
    }

    public String getfCreatorInfo() {
        return fCreatorInfo;
    }

    public void setfCreatorInfo(String fCreatorInfo) {
        this.fCreatorInfo = fCreatorInfo;
    }

    public int getfBacker() {
        return fBacker;
    }

    public void setfBacker(int fBacker) {
        this.fBacker = fBacker;
    }

    public int getfGoal() {
        return fGoal;
    }

    public void setfGoal(int fGoal) {
        this.fGoal = fGoal;
    }

    public int getfAmount() {
        return fAmount;
    }

    public void setfAmount(int fAmount) {
        this.fAmount = fAmount;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public MultipartFile getFuploadFile() {
        return fuploadFile;
    }

    public void setFuploadFile(MultipartFile fuploadFile) {
        this.fuploadFile = fuploadFile;
    }

    @Override
    public String toString() {
        return "Funding{" +
                "fno=" + fno +
                ", fTitle='" + fTitle + '\'' +
                ", fReward='" + fReward + '\'' +
                ", fContent='" + fContent + '\'' +
                ", fCreator='" + fCreator + '\'' +
                ", fCreatorInfo='" + fCreatorInfo + '\'' +
                ", fBacker=" + fBacker +
                ", fGoal=" + fGoal +
                ", fAmount=" + fAmount +
                ", regDate=" + regDate +
                ", endDate=" + endDate +
                ", fuploadFile=" + fuploadFile +
                '}';
    }
}
