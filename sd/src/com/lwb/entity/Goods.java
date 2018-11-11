package com.lwb.entity;

public class Goods {
	private int goodsId;
	private String goodsName;
	private GoodsType goodsType;
	private String goodsDesc;
	private Double goodsUnitPrice;
	private String goodsImageName;
	private int sellCount;
	private String goodsDate;
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public GoodsType getGoodsType() {
		return goodsType;
	}
	public void setGoodsType(GoodsType goodsType) {
		this.goodsType = goodsType;
	}
	public String getGoodsDesc() {
		return goodsDesc;
	}
	public void setGoodsDesc(String goodsDesc) {
		this.goodsDesc = goodsDesc;
	}
	public Double getGoodsUnitPrice() {
		return goodsUnitPrice;
	}
	public void setGoodsUnitPrice(Double goodsUnitPrice) {
		this.goodsUnitPrice = goodsUnitPrice;
	}
	public String getGoodsImageName() {
		return goodsImageName;
	}
	public void setGoodsImageName(String goodsImageName) {
		this.goodsImageName = goodsImageName;
	}
	public int getSellCount() {
		return sellCount;
	}
	public void setSellCount(int sellCount) {
		this.sellCount = sellCount;
	}
	
	public String getGoodsDate() {
		return goodsDate;
	}
	public void setGoodsDate(String goodsDate) {
		this.goodsDate = goodsDate;
	}
	public Goods(int goodsId, String goodsName, GoodsType goodsType, String goodsDesc, Double goodsUnitPrice,
			String goodsImageName, int sellCount, String goodsDate) {
		super();
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.goodsType = goodsType;
		this.goodsDesc = goodsDesc;
		this.goodsUnitPrice = goodsUnitPrice;
		this.goodsImageName = goodsImageName;
		this.sellCount = sellCount;
		this.goodsDate = goodsDate;
	}
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
