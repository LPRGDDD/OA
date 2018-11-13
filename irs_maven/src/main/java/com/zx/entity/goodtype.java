package com.zx.entity;

import java.util.List;

public class goodtype {
    private Integer goId;

    private Integer cId;
    
    private String goName;

    private String goOrder;
    
    private List<shop> shop;
    
    
    public List<shop> getShop() {
		return shop;
	}

	public void setShop(List<shop> shop) {
		this.shop = shop;
	}

	

	public goodtype() {
		super();
		// TODO Auto-generated constructor stub
	}

	public goodtype(Integer goId, Integer cId, String goName, String goOrder, List<com.zx.entity.shop> shop) {
		super();
		this.goId = goId;
		this.cId = cId;
		this.goName = goName;
		this.goOrder = goOrder;
		this.shop = shop;
	}

	@Override
	public String toString() {
		return "goodtype [goId=" + goId + ", cId=" + cId + ", goName=" + goName + ", goOrder=" + goOrder + ", shop="
				+ shop + "]";
	}

	public Integer getGoId() {
        return goId;
    }

    public void setGoId(Integer goId) {
        this.goId = goId;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getGoName() {
        return goName;
    }

    public void setGoName(String goName) {
        this.goName = goName == null ? null : goName.trim();
    }

    public String getGoOrder() {
        return goOrder;
    }

    public void setGoOrder(String goOrder) {
        this.goOrder = goOrder == null ? null : goOrder.trim();
    }
}