package com.music.tuna.payment.vo;

public class Goods {

	private int goodsNo;
	private String goodsName;
	private int goodsPrice;
	
	public Goods(int goodsNo, String goodsName, int goodsPrice) {
		super();
		this.goodsNo = goodsNo;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
	}

	public int getGoodsNo() {
		return goodsNo;
	}

	public void setGoodsNo(int goodsNo) {
		this.goodsNo = goodsNo;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public int getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	@Override
	public String toString() {
		return "Goods [goodsNo=" + goodsNo + ", goodsName=" + goodsName + ", goodsPrice=" + goodsPrice + "]";
	}

	
	
	
}
