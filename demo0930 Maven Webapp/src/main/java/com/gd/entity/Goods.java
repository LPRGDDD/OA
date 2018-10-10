package com.gd.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Goods {
    private Integer goodsid;

    private String goodsname;

    private String goodsdesc;

    private Double goodsunitprice;

    private String goodsimagename;

    private Integer sellcount;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date goodsdate;

    private GoodsType goodstype;

	public Integer getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(Integer goodsid) {
		this.goodsid = goodsid;
	}

	public String getGoodsname() {
		return goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public String getGoodsdesc() {
		return goodsdesc;
	}

	public void setGoodsdesc(String goodsdesc) {
		this.goodsdesc = goodsdesc;
	}

	public Double getGoodsunitprice() {
		return goodsunitprice;
	}

	public void setGoodsunitprice(Double goodsunitprice) {
		this.goodsunitprice = goodsunitprice;
	}

	public String getGoodsimagename() {
		return goodsimagename;
	}

	public void setGoodsimagename(String goodsimagename) {
		this.goodsimagename = goodsimagename;
	}

	public Integer getSellcount() {
		return sellcount;
	}

	public void setSellcount(Integer sellcount) {
		this.sellcount = sellcount;
	}

	public Date getGoodsdate() {
		return goodsdate;
	}

	public void setGoodsdate(Date goodsdate) {
		this.goodsdate = goodsdate;
	}

	public GoodsType getGoodstype() {
		return goodstype;
	}

	public void setGoodstype(GoodsType goodstype) {
		this.goodstype = goodstype;
	}

	public Goods(Integer goodsid, String goodsname, String goodsdesc, Double goodsunitprice, String goodsimagename,
			Integer sellcount, Date goodsdate, GoodsType goodstype) {
		super();
		this.goodsid = goodsid;
		this.goodsname = goodsname;
		this.goodsdesc = goodsdesc;
		this.goodsunitprice = goodsunitprice;
		this.goodsimagename = goodsimagename;
		this.sellcount = sellcount;
		this.goodsdate = goodsdate;
		this.goodstype = goodstype;
	}

	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Goods [goodsid=" + goodsid + ", goodsname=" + goodsname + ", goodsdesc=" + goodsdesc
				+ ", goodsunitprice=" + goodsunitprice + ", goodsimagename=" + goodsimagename + ", sellcount="
				+ sellcount + ", goodsdate=" + goodsdate + ", goodstype=" + goodstype + "]";
	}
    
}