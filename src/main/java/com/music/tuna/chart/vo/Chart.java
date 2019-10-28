package com.music.tuna.chart.vo;

import java.sql.Date;

public class Chart {
	
	private Date articleDate;
	private int articleNo;
	private int readCount;
	private int rc;
	private int chartMax;
	private String id;
	private String title;
	private String text;
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
	public int getRc() {
		return rc;
	}
	public void setRc(int rc) {
		this.rc = rc;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	
	public int getChartMax() {
		return chartMax;
	}
	public void setChartMax(int chartMax) {
		this.chartMax = chartMax;
	}
	
	@Override
	public String toString() {
		return "Chart [articleDate=" + articleDate + ", articleNo=" + articleNo + ", readCount=" + readCount + ", rc="
				+ rc + ", chartMax=" + chartMax + ", id=" + id + ", title=" + title + ", text=" + text + "]";
	}
	
	
	
	
}
