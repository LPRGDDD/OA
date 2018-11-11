package com.chl.entity;

public class Email {
    private Integer emailId;

    private Integer boxId;

    private Integer emailid;

    private String toId;

    private Integer readFlag;

    private Integer deleteFlag;

    private Integer receipt;

    private Integer isF;

    private Integer isR;

    public Integer getEmailId() {
        return emailId;
    }

    public void setEmailId(Integer emailId) {
        this.emailId = emailId;
    }

    public Integer getBoxId() {
        return boxId;
    }

    public void setBoxId(Integer boxId) {
        this.boxId = boxId;
    }

    public Integer getEmailid() {
        return emailid;
    }

    public void setEmailid(Integer emailid) {
        this.emailid = emailid;
    }

    public String getToId() {
        return toId;
    }

    public void setToId(String toId) {
        this.toId = toId == null ? null : toId.trim();
    }

    public Integer getReadFlag() {
        return readFlag;
    }

    public void setReadFlag(Integer readFlag) {
        this.readFlag = readFlag;
    }

    public Integer getDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(Integer deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

    public Integer getReceipt() {
        return receipt;
    }

    public void setReceipt(Integer receipt) {
        this.receipt = receipt;
    }

    public Integer getIsF() {
        return isF;
    }

    public void setIsF(Integer isF) {
        this.isF = isF;
    }

    public Integer getIsR() {
        return isR;
    }

    public void setIsR(Integer isR) {
        this.isR = isR;
    }
}