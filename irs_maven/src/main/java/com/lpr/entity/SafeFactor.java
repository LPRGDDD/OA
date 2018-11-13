package com.lpr.entity;

public class SafeFactor {
	/**
	 * 保险系数表
	 */
    private Integer safefactorId;//保险系数ID

    private String safefactorName;//保险系数名称

    private String grpayment;//个人支付百分比

    private String dwpayment;//单位支付百分比

    public Integer getSafefactorId() {
        return safefactorId;
    }

    public void setSafefactorId(Integer safefactorId) {
        this.safefactorId = safefactorId;
    }

    public String getSafefactorName() {
        return safefactorName;
    }

    public void setSafefactorName(String safefactorName) {
        this.safefactorName = safefactorName == null ? null : safefactorName.trim();
    }

    public String getGrpayment() {
        return grpayment;
    }

    public void setGrpayment(String grpayment) {
        this.grpayment = grpayment == null ? null : grpayment.trim();
    }

    public String getDwpayment() {
        return dwpayment;
    }

    public void setDwpayment(String dwpayment) {
        this.dwpayment = dwpayment == null ? null : dwpayment.trim();
    }
}