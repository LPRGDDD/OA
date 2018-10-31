package com.lwb.entity;

import java.util.Date;

public class Transfer {
    private Integer hrTransferId;

    private Integer userRoleId;

    private Integer deptId;

    private Integer tbUserId;

    private Integer hrTransferTransfertype;

    private Date hrTransferDate;

    private Date hrTransferEffectivedate;

    private String hrTransferBeforetheunit;

    private String hrTransferAftertheunit;

    private String hrTransferFormerposition;

    private String hrTransferAfterthejob;

    private String hrTransferCause;

    private String hrTransferRemark;

    private Date hrTransferModification;

    private String hrTransferUsername;

    private Date hrTransferCurrenttime;

    public Integer getHrTransferId() {
        return hrTransferId;
    }

    public void setHrTransferId(Integer hrTransferId) {
        this.hrTransferId = hrTransferId;
    }

    public Integer getUserRoleId() {
        return userRoleId;
    }

    public void setUserRoleId(Integer userRoleId) {
        this.userRoleId = userRoleId;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public Integer getTbUserId() {
        return tbUserId;
    }

    public void setTbUserId(Integer tbUserId) {
        this.tbUserId = tbUserId;
    }

    public Integer getHrTransferTransfertype() {
        return hrTransferTransfertype;
    }

    public void setHrTransferTransfertype(Integer hrTransferTransfertype) {
        this.hrTransferTransfertype = hrTransferTransfertype;
    }

    public Date getHrTransferDate() {
        return hrTransferDate;
    }

    public void setHrTransferDate(Date hrTransferDate) {
        this.hrTransferDate = hrTransferDate;
    }

    public Date getHrTransferEffectivedate() {
        return hrTransferEffectivedate;
    }

    public void setHrTransferEffectivedate(Date hrTransferEffectivedate) {
        this.hrTransferEffectivedate = hrTransferEffectivedate;
    }

    public String getHrTransferBeforetheunit() {
        return hrTransferBeforetheunit;
    }

    public void setHrTransferBeforetheunit(String hrTransferBeforetheunit) {
        this.hrTransferBeforetheunit = hrTransferBeforetheunit == null ? null : hrTransferBeforetheunit.trim();
    }

    public String getHrTransferAftertheunit() {
        return hrTransferAftertheunit;
    }

    public void setHrTransferAftertheunit(String hrTransferAftertheunit) {
        this.hrTransferAftertheunit = hrTransferAftertheunit == null ? null : hrTransferAftertheunit.trim();
    }

    public String getHrTransferFormerposition() {
        return hrTransferFormerposition;
    }

    public void setHrTransferFormerposition(String hrTransferFormerposition) {
        this.hrTransferFormerposition = hrTransferFormerposition == null ? null : hrTransferFormerposition.trim();
    }

    public String getHrTransferAfterthejob() {
        return hrTransferAfterthejob;
    }

    public void setHrTransferAfterthejob(String hrTransferAfterthejob) {
        this.hrTransferAfterthejob = hrTransferAfterthejob == null ? null : hrTransferAfterthejob.trim();
    }

    public String getHrTransferCause() {
        return hrTransferCause;
    }

    public void setHrTransferCause(String hrTransferCause) {
        this.hrTransferCause = hrTransferCause == null ? null : hrTransferCause.trim();
    }

    public String getHrTransferRemark() {
        return hrTransferRemark;
    }

    public void setHrTransferRemark(String hrTransferRemark) {
        this.hrTransferRemark = hrTransferRemark == null ? null : hrTransferRemark.trim();
    }

    public Date getHrTransferModification() {
        return hrTransferModification;
    }

    public void setHrTransferModification(Date hrTransferModification) {
        this.hrTransferModification = hrTransferModification;
    }

    public String getHrTransferUsername() {
        return hrTransferUsername;
    }

    public void setHrTransferUsername(String hrTransferUsername) {
        this.hrTransferUsername = hrTransferUsername == null ? null : hrTransferUsername.trim();
    }

    public Date getHrTransferCurrenttime() {
        return hrTransferCurrenttime;
    }

    public void setHrTransferCurrenttime(Date hrTransferCurrenttime) {
        this.hrTransferCurrenttime = hrTransferCurrenttime;
    }
}