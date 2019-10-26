package com.music.tuna.magazineBoard.model.vo;

import java.sql.Date;

public class MagazineBoard {
	
/*	
    MTITLE VARCHAR2(100),   	제목
    MCONTENT VARCHAR2(4000), 	내용
    MCOUNT NUMBER DEFAULT 0,	조회수
    CREATE_DATE DATE			작성일
	MSEQ						게시물번호(시퀀스)
	STATUS						존재여부(y,n)
	thumbnail;					썸네일 사진		
	  */
	
	private String mtitle;		//제목
	private String mcontent;	//내용
	private int mcount;			//조회수
	private Date createdate;	//작성일
	private int mseq;			//게시물 번호(시퀀스)
	private String status;
	private String thumbnail;	//썸네일 사진

	public MagazineBoard(){}

	public MagazineBoard(String mtitle, String mcontent, int mcount, Date createdate, int mseq, String status,
			String thumbnail) {
		super();
		this.mtitle = mtitle;
		this.mcontent = mcontent;
		this.mcount = mcount;
		this.createdate = createdate;
		this.mseq = mseq;
		this.status = status;
		this.thumbnail = thumbnail;
	}

	public String getMtitle() {
		return mtitle;
	}

	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}

	public String getMcontent() {
		return mcontent;
	}

	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}

	public int getMcount() {
		return mcount;
	}

	public void setMcount(int mcount) {
		this.mcount = mcount;
	}

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public int getMseq() {
		return mseq;
	}

	public void setMseq(int mseq) {
		this.mseq = mseq;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	@Override
	public String toString() {
		return "MagazineBoard [mtitle=" + mtitle + ", mcontent=" + mcontent + ", mcount=" + mcount + ", createdate="
				+ createdate + ", mseq=" + mseq + ", status=" + status + ", thumbnail=" + thumbnail + "]";
	}

	
}
