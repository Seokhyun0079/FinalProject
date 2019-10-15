package com.music.tuna.magazineBoard.model.vo;

import java.sql.Date;

public class MagazineBoard {
	
/*	  MTITLE VARCHAR2(100), 
	  MCONTENT VARCHAR2(4000), 
	  CREATE_DATE DATE,
	  STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	  MCOUNT NUMBER DEFAULT 0,
	  MPICTURE VARCHAR2(100)*/
	
	private String MTITLE;		//제목
	private String MCONTENT;	//내용
	private Date CREATEDATE;	//작성일
	private String STATUS;		//상태
	private int MCOUNT;			//조회수
	private String MPICTURE; 	//사진
	
	public MagazineBoard(){}

	public MagazineBoard(String mTITLE, String mCONTENT, Date cREATEDATE, String sTATUS, int mCOUNT, String mPICTURE) {
		super();
		MTITLE = mTITLE;
		MCONTENT = mCONTENT;
		CREATEDATE = cREATEDATE;
		STATUS = sTATUS;
		MCOUNT = mCOUNT;
		MPICTURE = mPICTURE;
	}

	public String getMTITLE() {
		return MTITLE;
	}

	public void setMTITLE(String mTITLE) {
		MTITLE = mTITLE;
	}

	public String getMCONTENT() {
		return MCONTENT;
	}

	public void setMCONTENT(String mCONTENT) {
		MCONTENT = mCONTENT;
	}

	public Date getCREATEDATE() {
		return CREATEDATE;
	}

	public void setCREATEDATE(Date cREATEDATE) {
		CREATEDATE = cREATEDATE;
	}

	public String getSTATUS() {
		return STATUS;
	}

	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}

	public int getMCOUNT() {
		return MCOUNT;
	}

	public void setMCOUNT(int mCOUNT) {
		MCOUNT = mCOUNT;
	}

	public String getMPICTURE() {
		return MPICTURE;
	}

	public void setMPICTURE(String mPICTURE) {
		MPICTURE = mPICTURE;
	}

	@Override
	public String toString() {
		return "MagazineBoard [MTITLE=" + MTITLE + ", MCONTENT=" + MCONTENT + ", CREATEDATE=" + CREATEDATE + ", STATUS="
				+ STATUS + ", MCOUNT=" + MCOUNT + ", MPICTURE=" + MPICTURE + "]";
	}
	
	
	
	

}
