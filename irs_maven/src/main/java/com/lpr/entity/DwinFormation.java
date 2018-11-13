package com.lpr.entity;

public class DwinFormation {
	/**
	 * 单位信息表
	 */
    private Integer dwinformationId;//单位信息编号

    private String dwinformationName;//单位名称

    private String dwinformationPhone;//单位联系电话

    private String dwinformationFax;//单位传真

    private String dwinformationPostalCode;//单位邮政编码

    private String dwinformationAddress;//单位地址

    private String dwinformationWebsite;//单位网站

    private String dwinformationEmail;//单位电子信箱

    private String dwinformationBankname;//单位开户行名称

    private String dwinformationAccountNumber;//单位账号

    private String dwinformationIntroduce;//单位简介

    private String dwinformationBanknumber;//单位开户行账号

    public Integer getDwinformationId() {
        return dwinformationId;
    }

    public void setDwinformationId(Integer dwinformationId) {
        this.dwinformationId = dwinformationId;
    }

    public String getDwinformationName() {
        return dwinformationName;
    }

    public void setDwinformationName(String dwinformationName) {
        this.dwinformationName = dwinformationName == null ? null : dwinformationName.trim();
    }

    public String getDwinformationPhone() {
        return dwinformationPhone;
    }

    public void setDwinformationPhone(String dwinformationPhone) {
        this.dwinformationPhone = dwinformationPhone == null ? null : dwinformationPhone.trim();
    }

    public String getDwinformationFax() {
        return dwinformationFax;
    }

    public void setDwinformationFax(String dwinformationFax) {
        this.dwinformationFax = dwinformationFax == null ? null : dwinformationFax.trim();
    }

    public String getDwinformationPostalCode() {
        return dwinformationPostalCode;
    }

    public void setDwinformationPostalCode(String dwinformationPostalCode) {
        this.dwinformationPostalCode = dwinformationPostalCode == null ? null : dwinformationPostalCode.trim();
    }

    public String getDwinformationAddress() {
        return dwinformationAddress;
    }

    public void setDwinformationAddress(String dwinformationAddress) {
        this.dwinformationAddress = dwinformationAddress == null ? null : dwinformationAddress.trim();
    }

    public String getDwinformationWebsite() {
        return dwinformationWebsite;
    }

    public void setDwinformationWebsite(String dwinformationWebsite) {
        this.dwinformationWebsite = dwinformationWebsite == null ? null : dwinformationWebsite.trim();
    }

    public String getDwinformationEmail() {
        return dwinformationEmail;
    }

    public void setDwinformationEmail(String dwinformationEmail) {
        this.dwinformationEmail = dwinformationEmail == null ? null : dwinformationEmail.trim();
    }

    public String getDwinformationBankname() {
        return dwinformationBankname;
    }

    public void setDwinformationBankname(String dwinformationBankname) {
        this.dwinformationBankname = dwinformationBankname == null ? null : dwinformationBankname.trim();
    }

    public String getDwinformationAccountNumber() {
        return dwinformationAccountNumber;
    }

    public void setDwinformationAccountNumber(String dwinformationAccountNumber) {
        this.dwinformationAccountNumber = dwinformationAccountNumber == null ? null : dwinformationAccountNumber.trim();
    }

    public String getDwinformationIntroduce() {
        return dwinformationIntroduce;
    }

    public void setDwinformationIntroduce(String dwinformationIntroduce) {
        this.dwinformationIntroduce = dwinformationIntroduce == null ? null : dwinformationIntroduce.trim();
    }

    public String getDwinformationBanknumber() {
        return dwinformationBanknumber;
    }

    public void setDwinformationBanknumber(String dwinformationBanknumber) {
        this.dwinformationBanknumber = dwinformationBanknumber == null ? null : dwinformationBanknumber.trim();
    }
}