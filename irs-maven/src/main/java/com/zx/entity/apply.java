package com.zx.entity;

import java.util.Date;

import com.lxm.entity.TbUse;

public class apply {
	private Integer apId;

	private Integer cId;

	private Integer sId;

	private String borrow;

	private Integer apPrice;

	private Integer apNum;

	private String apBei;

	private String apName;

	private String apFlag;

	private String apDate;

	private String apOperator;

	private Integer apState;

	private Integer apQty;

	private String apReson;

	private String apCompany;

	private String band;

	private Integer cycleNo;

	private Integer cycle;

	private Integer deptId;

	private String apKeeper;

	private String grantor;

	private Integer grantorStatus;

	private String deptManger;

	private Integer deptStatus;

	private Date returnDate;

	private Integer returnStatus;

	private String returnReason;

	private String available;

	private court court;

	private shop shop;

	private TbUse user;

	public court getCourt() {
		return court;
	}

	public void setCourt(court court) {
		this.court = court;
	}

	public shop getShop() {
		return shop;
	}

	public void setShop(shop shop) {
		this.shop = shop;
	}

	public TbUse getUser() {
		return user;
	}

	public void setUser(TbUse user) {
		this.user = user;
	}

	public Integer getApId() {
		return apId;
	}

	public void setApId(Integer apId) {
		this.apId = apId;
	}

	public Integer getcId() {
		return cId;
	}

	public void setcId(Integer cId) {
		this.cId = cId;
	}

	public Integer getsId() {
		return sId;
	}

	public void setsId(Integer sId) {
		this.sId = sId;
	}

	
	public String getBorrow() {
		return borrow;
	}

	public void setBorrow(String borrow) {
		this.borrow = borrow;
	}

	public Integer getApPrice() {
		return apPrice;
	}

	public void setApPrice(Integer apPrice) {
		this.apPrice = apPrice;
	}

	public Integer getApNum() {
		return apNum;
	}

	public void setApNum(Integer apNum) {
		this.apNum = apNum;
	}

	public String getApBei() {
		return apBei;
	}

	public void setApBei(String apBei) {
		this.apBei = apBei == null ? null : apBei.trim();
	}

	public String getApName() {
		return apName;
	}

	public void setApName(String apName) {
		this.apName = apName == null ? null : apName.trim();
	}

	public String getApFlag() {
		return apFlag;
	}

	public void setApFlag(String apFlag) {
		this.apFlag = apFlag == null ? null : apFlag.trim();
	}

	public String getApDate() {
		return apDate;
	}

	public void setApDate(String apDate) {
		this.apDate = apDate;
	}

	public String getApOperator() {
		return apOperator;
	}

	public void setApOperator(String apOperator) {
		this.apOperator = apOperator == null ? null : apOperator.trim();
	}

	public Integer getApState() {
		return apState;
	}

	public void setApState(Integer apState) {
		this.apState = apState;
	}

	public Integer getApQty() {
		return apQty;
	}

	public void setApQty(Integer apQty) {
		this.apQty = apQty;
	}

	public String getApReson() {
		return apReson;
	}

	public void setApReson(String apReson) {
		this.apReson = apReson == null ? null : apReson.trim();
	}

	public String getApCompany() {
		return apCompany;
	}

	public void setApCompany(String apCompany) {
		this.apCompany = apCompany == null ? null : apCompany.trim();
	}

	public String getBand() {
		return band;
	}

	public void setBand(String band) {
		this.band = band == null ? null : band.trim();
	}

	public Integer getCycleNo() {
		return cycleNo;
	}

	public void setCycleNo(Integer cycleNo) {
		this.cycleNo = cycleNo;
	}

	public Integer getCycle() {
		return cycle;
	}

	public void setCycle(Integer cycle) {
		this.cycle = cycle;
	}

	public Integer getDeptId() {
		return deptId;
	}

	public void setDeptId(Integer deptId) {
		this.deptId = deptId;
	}

	public String getApKeeper() {
		return apKeeper;
	}

	public void setApKeeper(String apKeeper) {
		this.apKeeper = apKeeper == null ? null : apKeeper.trim();
	}

	public String getGrantor() {
		return grantor;
	}

	public void setGrantor(String grantor) {
		this.grantor = grantor == null ? null : grantor.trim();
	}

	public Integer getGrantorStatus() {
		return grantorStatus;
	}

	public void setGrantorStatus(Integer grantorStatus) {
		this.grantorStatus = grantorStatus;
	}

	public String getDeptManger() {
		return deptManger;
	}

	public void setDeptManger(String deptManger) {
		this.deptManger = deptManger == null ? null : deptManger.trim();
	}

	public Integer getDeptStatus() {
		return deptStatus;
	}

	public void setDeptStatus(Integer deptStatus) {
		this.deptStatus = deptStatus;
	}

	public Date getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}

	public Integer getReturnStatus() {
		return returnStatus;
	}

	public void setReturnStatus(Integer returnStatus) {
		this.returnStatus = returnStatus;
	}

	public String getReturnReason() {
		return returnReason;
	}

	public void setReturnReason(String returnReason) {
		this.returnReason = returnReason == null ? null : returnReason.trim();
	}

	public String getAvailable() {
		return available;
	}

	public void setAvailable(String available) {
		this.available = available == null ? null : available.trim();
	}
}