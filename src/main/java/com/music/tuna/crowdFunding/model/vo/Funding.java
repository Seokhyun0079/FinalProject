package com.music.tuna.crowdFunding.model.vo;

import org.springframework.web.multipart.MultipartFile;
import java.sql.Date;

public class Funding {

    private int fno;            // 펀딩 프로젝트 번호
    private String id;          // 유저아이디
    private String ftitle;      // 펀딩 프로젝트명
    private String freward;     // 펀딩 리워드
    private String fcontent;    // 프로젝트설명
    private String fcreator;       // 팀(창작자)명
    private String fcreatorInfo;   // 팀 소개글
    private int fbacker;        // 후원자 수
    private int fgoal;          // 목표 금액
    private int famount;        // 누적 금액
    private Date regDate;       // 등록 날짜
    private Date endDate;       // 마감 날짜
    private String fileName;    // 이미지 파일 이름
    // db에 들어가지않는 항목
    private MultipartFile fuploadFile;  // 리워드 이미지
    private int percent;
    private int dDay;

    public int getFno() {
        return fno;
    }

    public void setFno(int fno) {
        this.fno = fno;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFtitle() {
        return ftitle;
    }

    public void setFtitle(String ftitle) {
        this.ftitle = ftitle;
    }

    public String getFreward() {
        return freward;
    }

    public void setFreward(String freward) {
        this.freward = freward;
    }

    public String getFcontent() {
        return fcontent;
    }

    public void setFcontent(String fcontent) {
        this.fcontent = fcontent;
    }

    public String getFcreator() {
        return fcreator;
    }

    public void setFcreator(String fcreator) {
        this.fcreator = fcreator;
    }

    public String getFcreatorInfo() {
        return fcreatorInfo;
    }

    public void setFcreatorInfo(String fcreatorInfo) {
        this.fcreatorInfo = fcreatorInfo;
    }

    public int getFbacker() {
        return fbacker;
    }

    public void setFbacker(int fbacker) {
        this.fbacker = fbacker;
    }

    public int getFgoal() {
        return fgoal;
    }

    public void setFgoal(int fgoal) {
        this.fgoal = fgoal;
    }

    public int getFamount() {
        return famount;
    }

    public void setFamount(int famount) {
        this.famount = famount;
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

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
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
                ", id=" + id +
                ", ftitle='" + ftitle + '\'' +
                ", freward='" + freward + '\'' +
                ", fcontent='" + fcontent + '\'' +
                ", fcreator='" + fcreator + '\'' +
                ", fcreatorInfo='" + fcreatorInfo + '\'' +
                ", fbacker=" + fbacker +
                ", fgoal=" + fgoal +
                ", famount=" + famount +
                ", regDate=" + regDate +
                ", endDate=" + endDate +
                ", fileName=" + fileName +
                ", fuploadFile=" + fuploadFile +
                '}';
    }

    public int getPercent() {
        double percent = 0;
        double amount = getFamount();
        double goal = getFgoal();
        if (getFamount() != 0) {
            percent = (amount / goal) * 100;
            return (int) percent;
        }else return 0;
    }

    public int getdDay() {
        //SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        if(getEndDate()!=null && getRegDate()!=null) {
            long diffDay = (getEndDate().getTime() - getRegDate().getTime()) / (24 * 60 * 60 * 1000);
            return (int) diffDay;
        }else {
            System.out.println("null!!");
            return 0;
        }
    }

}
