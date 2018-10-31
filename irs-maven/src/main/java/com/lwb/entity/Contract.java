package com.lwb.entity;

import java.util.Date;

public class Contract {
    private Integer hrContractId;

    private Integer userRoleId;

    private Integer tbUserId;

    private Integer hrContractSerialnumber;

    private String hrContractCompany;

    private String hrContractType;

    private String hrContractDeadline;

    private Date hrContractSigndate;

    private Date hrContractAccruedate;

    private Date hrContractEnddate;

    private Date hrContractTrydate;

    private Integer hrContractTurn;

    private Integer hrContractRelieve;

    private Integer hrContractRenew;

    private String hrContractRemark;

    private String hrContractUsername;

    private Date hrContractCurrentTime;

    public Integer getHrContractId() {
        return hrContractId;
    }

    public void setHrContractId(Integer hrContractId) {
        this.hrContractId = hrContractId;
    }

    public Integer getUserRoleId() {
        return userRoleId;
    }

    public void setUserRoleId(Integer userRoleId) {
        this.userRoleId = userRoleId;
    }

    public Integer getTbUserId() {
        return tbUserId;
    }

    public void setTbUserId(Integer tbUserId) {
        this.tbUserId = tbUserId;
    }

    public Integer getHrContractSerialnumber() {
        return hrContractSerialnumber;
    }

    public void setHrContractSerialnumber(Integer hrContractSerialnumber) {
        this.hrContractSerialnumber = hrContractSerialnumber;
    }

    public String getHrContractCompany() {
        return hrContractCompany;
    }

    public void setHrContractCompany(String hrContractCompany) {
        this.hrContractCompany = hrContractCompany == null ? null : hrContractCompany.trim();
    }

    public String getHrContractType() {
        return hrContractType;
    }

    public void setHrContractType(String hrContractType) {
        this.hrContractType = hrContractType == null ? null : hrContractType.trim();
    }

    public String getHrContractDeadline() {
        return hrContractDeadline;
    }

    public void setHrContractDeadline(String hrContractDeadline) {
        this.hrContractDeadline = hrContractDeadline == null ? null : hrContractDeadline.trim();
    }

    public Date getHrContractSigndate() {
        return hrContractSigndate;
    }

    public void setHrContractSigndate(Date hrContractSigndate) {
        this.hrContractSigndate = hrContractSigndate;
    }

    public Date getHrContractAccruedate() {
        return hrContractAccruedate;
    }

    public void setHrContractAccruedate(Date hrContractAccruedate) {
        this.hrContractAccruedate = hrContractAccruedate;
    }

    public Date getHrContractEnddate() {
        return hrContractEnddate;
    }

    public void setHrContractEnddate(Date hrContractEnddate) {
        this.hrContractEnddate = hrContractEnddate;
    }

    public Date getHrContractTrydate() {
        return hrContractTrydate;
    }

    public void setHrContractTrydate(Date hrContractTrydate) {
        this.hrContractTrydate = hrContractTrydate;
    }

    public Integer getHrContractTurn() {
        return hrContractTurn;
    }

    public void setHrContractTurn(Integer hrContractTurn) {
        this.hrContractTurn = hrContractTurn;
    }

    public Integer getHrContractRelieve() {
        return hrContractRelieve;
    }

    public void setHrContractRelieve(Integer hrContractRelieve) {
        this.hrContractRelieve = hrContractRelieve;
    }

    public Integer getHrContractRenew() {
        return hrContractRenew;
    }

    public void setHrContractRenew(Integer hrContractRenew) {
        this.hrContractRenew = hrContractRenew;
    }

    public String getHrContractRemark() {
        return hrContractRemark;
    }

    public void setHrContractRemark(String hrContractRemark) {
        this.hrContractRemark = hrContractRemark == null ? null : hrContractRemark.trim();
    }

    public String getHrContractUsername() {
        return hrContractUsername;
    }

    public void setHrContractUsername(String hrContractUsername) {
        this.hrContractUsername = hrContractUsername == null ? null : hrContractUsername.trim();
    }

    public Date getHrContractCurrentTime() {
        return hrContractCurrentTime;
    }

    public void setHrContractCurrentTime(Date hrContractCurrentTime) {
        this.hrContractCurrentTime = hrContractCurrentTime;
    }
}