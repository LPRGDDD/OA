package com.zx.entity;

import java.util.Date;

public class shop {
    private Integer sId;
    
    private Integer goId;

    private Integer cId;

    private String sName;

    private String sSize;

    private String sFu;

    private String sType;

    private String sBian;

    private String sPrice;

    private String sGong;

    private String sUpalert;

    private String sLowalert;

    private Integer sNow;

    private String sCount;

    private String sDesc;

    private String sDept;

    private String sManger;

    private String sCreator;

    private String sAuditer;

    private Integer sArder;

    private Integer sAllocation;

    private String sDate;
    
    private goodtype goodtype;
    
    
    
   
	

	

	@Override
	public String toString() {
		return "shop [sId=" + sId + ", goId=" + goId + ", cId=" + cId + ", sName=" + sName + ", sSize=" + sSize
				+ ", sFu=" + sFu + ", sType=" + sType + ", sBian=" + sBian + ", sPrice=" + sPrice + ", sGong=" + sGong
				+ ", sUpalert=" + sUpalert + ", sLowalert=" + sLowalert + ", sNow=" + sNow + ", sCount=" + sCount
				+ ", sDesc=" + sDesc + ", sDept=" + sDept + ", sManger=" + sManger + ", sCreator=" + sCreator
				+ ", sAuditer=" + sAuditer + ", sArder=" + sArder + ", sAllocation=" + sAllocation + ", sDate=" + sDate
				+ ", goodtype=" + goodtype + "]";
	}

	public goodtype getGoodtype() {
		return goodtype;
	}

	public void setGoodtype(goodtype goodtype) {
		this.goodtype = goodtype;
	}

	public Integer getGoId() {
		return goId;
	}

	public void setGoId(Integer goId) {
		this.goId = goId;
	}

	public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName == null ? null : sName.trim();
    }

    public String getsSize() {
        return sSize;
    }

    public void setsSize(String sSize) {
        this.sSize = sSize == null ? null : sSize.trim();
    }

    public String getsFu() {
        return sFu;
    }

    public void setsFu(String sFu) {
        this.sFu = sFu == null ? null : sFu.trim();
    }

    public String getsType() {
        return sType;
    }

    public void setsType(String sType) {
        this.sType = sType == null ? null : sType.trim();
    }

    public String getsBian() {
        return sBian;
    }

    public void setsBian(String sBian) {
        this.sBian = sBian == null ? null : sBian.trim();
    }

    public String getsPrice() {
        return sPrice;
    }

    public void setsPrice(String sPrice) {
        this.sPrice = sPrice == null ? null : sPrice.trim();
    }

    public String getsGong() {
        return sGong;
    }

    public void setsGong(String sGong) {
        this.sGong = sGong == null ? null : sGong.trim();
    }

    public String getsUpalert() {
        return sUpalert;
    }

    public void setsUpalert(String sUpalert) {
        this.sUpalert = sUpalert == null ? null : sUpalert.trim();
    }

    public String getsLowalert() {
        return sLowalert;
    }

    public void setsLowalert(String sLowalert) {
        this.sLowalert = sLowalert == null ? null : sLowalert.trim();
    }

  

    public Integer getsNow() {
		return sNow;
	}

	public void setsNow(Integer sNow) {
		this.sNow = sNow;
	}

	public String getsCount() {
        return sCount;
    }

    public void setsCount(String sCount) {
        this.sCount = sCount == null ? null : sCount.trim();
    }

    public String getsDesc() {
        return sDesc;
    }

    public void setsDesc(String sDesc) {
        this.sDesc = sDesc == null ? null : sDesc.trim();
    }

    public String getsDept() {
        return sDept;
    }

    public void setsDept(String sDept) {
        this.sDept = sDept == null ? null : sDept.trim();
    }

    public String getsManger() {
        return sManger;
    }

    public void setsManger(String sManger) {
        this.sManger = sManger == null ? null : sManger.trim();
    }

    public String getsCreator() {
        return sCreator;
    }

    public void setsCreator(String sCreator) {
        this.sCreator = sCreator == null ? null : sCreator.trim();
    }

    public String getsAuditer() {
        return sAuditer;
    }

    public void setsAuditer(String sAuditer) {
        this.sAuditer = sAuditer == null ? null : sAuditer.trim();
    }

    public Integer getsArder() {
		return sArder;
	}

	public void setsArder(Integer sArder) {
		this.sArder = sArder;
	}

	public Integer getsAllocation() {
        return sAllocation;
    }

    public void setsAllocation(Integer sAllocation) {
        this.sAllocation = sAllocation;
    }

	public String getsDate() {
		return sDate;
	}

	public void setsDate(String sDate) {
		this.sDate = sDate;
	}


}