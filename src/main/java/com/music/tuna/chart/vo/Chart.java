package com.music.tuna.chart.vo;

import java.sql.Date;

public class Chart {
	private Date articleDate;
	private int articleNo;
	private int readCount;
	
	public Date getArticleDate() {
		return articleDate;
	}
	public void setArticleDate(Date articleDate) {
		this.articleDate = articleDate;
	}
	public int getArticleNo() {
		return articleNo;
	}
	public void setArticleNo(int articleNo) {
		this.articleNo = articleNo;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	
	@Override
	public String toString() {
		return "Chart [articleDate=" + articleDate + ", articleNo=" + articleNo + ", readCount=" + readCount + "]";
	}
	
	
	
	
	

}
