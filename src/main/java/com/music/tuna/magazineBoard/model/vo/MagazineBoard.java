package com.music.tuna.magazineBoard.model.vo;

import java.sql.Date;

public class MagazineBoard {
	
/*	  MTITLE VARCHAR2(100), 
	  MCONTENT VARCHAR2(4000), 
	  CREATE_DATE DATE,
	  STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	  MCOUNT NUMBER DEFAULT 0,
	  MPICTURE VARCHAR2(100)
	  NUMBER MSEQ
	  */
	
	private String mtitle;		//제목
	private String mcontent;	//내용
	private Date createdate;	//작성일
	private String status;		//상태
	private int mcount;			//조회수
	private String mpicture; 	//사진
	private int mseq;
	
	public MagazineBoard(){}

	public MagazineBoard(String mtitle, String mcontent, Date createdate, String status, int mcount, String mpicture,
			int mseq) {
		super();
		this.mtitle = mtitle;
		this.mcontent = mcontent;
		this.createdate = createdate;
		this.status = status;
		this.mcount = mcount;
		this.mpicture = mpicture;
		this.mseq = mseq;
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

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getMcount() {
		return mcount;
	}

	public void setMcount(int mcount) {
		this.mcount = mcount;
	}

	public String getMpicture() {
		return mpicture;
	}

	public void setMpicture(String mpicture) {
		this.mpicture = mpicture;
	}

	public int getMseq() {
		return mseq;
	}

	public void setMseq(int mseq) {
		this.mseq = mseq;
	}

	@Override
	public String toString() {
		return "MagazineBoard [mtitle=" + mtitle + ", mcontent=" + mcontent + ", createdate=" + createdate + ", status="
				+ status + ", mcount=" + mcount + ", mpicture=" + mpicture + ", mseq=" + mseq + "]";
	}
	
	
	



}
