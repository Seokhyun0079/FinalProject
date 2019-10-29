package com.music.tuna.payment.vo;

import java.sql.Date;

public class Payment {
	
	private int payNo;
	private String userId;
	private Date payDate;
	private int goodsNo;
	private String gname;//조인한 list 불러오기 위해 추가했습니다(고명빈)
	private int gprice;//조인한 list 불러오기 위해 추가했습니다(고명빈)
	private String pdate;//조인한 list 불러오기 위해 추가했습니다(고명빈)
	// db들어가지않음
	private int fno;
	
	
//	public Payment(int payNo, String userId, Date payDate, int goodsNo) {
//		super();
//		this.payNo = payNo;
//		this.userId = userId;
//		this.payDate = payDate;
//		this.goodsNo = goodsNo;
//	}
	public int getPayNo() {
		return payNo;
	}
	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getPayDate() {
		return payDate;
	}
	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}
	public int getGoodsNo() {
		return goodsNo;
	}
	public void setGoodsNo(int goodsNo) {
		this.goodsNo = goodsNo;
	}
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public int getGprice() {
		return gprice;
	}
	public void setGprice(int gprice) {
		this.gprice = gprice;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	@Override
	public String toString() {
		return "Payment [payNo=" + payNo + ", userId=" + userId + ", payDate=" + payDate + ", goodsNo=" + goodsNo + "]";
	}
	
	
	
	
}
