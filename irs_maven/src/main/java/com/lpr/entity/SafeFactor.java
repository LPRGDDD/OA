package com.lpr.entity;

public class SafeFactor {
	/**
	 * ����ϵ����
	 */
    private Integer safefactorId;//����ϵ��ID

    private String safefactorName;//����ϵ������

    private String grpayment;//����֧���ٷֱ�

    private String dwpayment;//��λ֧���ٷֱ�

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