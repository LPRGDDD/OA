package com.lwb.entity;

import java.util.Date;

public class Dimission {
    private Integer hrDimissionId;

    private Integer deptId;

    private Integer tbUserId;

    private String hrDimissionDuty;

    private Integer hrDimissionLeavetype;

    private Date hrDimissionApplicationdate;

    private Date hrDimissionDeparturedate;

    private Date hrDimissionCutoffdate;

    private String hrDimissionMonthly;

    private String hrDimissionProcedure;

    private String hrDimissionWhy;

    private String hrDimissionRemark;

    private String hrDimissionUsername;

    private Date hrDimissionCurrenttime;

    public Integer getHrDimissionId() {
        return hrDimissionId;
    }

    public void setHrDimissionId(Integer hrDimissionId) {
        this.hrDimissionId = hrDimissionId;
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

    public String getHrDimissionDuty() {
        return hrDimissionDuty;
    }

    public void setHrDimissionDuty(String hrDimissionDuty) {
        this.hrDimissionDuty = hrDimissionDuty == null ? null : hrDimissionDuty.trim();
    }

    public Integer getHrDimissionLeavetype() {
        return hrDimissionLeavetype;
    }

    public void setHrDimissionLeavetype(Integer hrDimissionLeavetype) {
        this.hrDimissionLeavetype = hrDimissionLeavetype;
    }

    public Date getHrDimissionApplicationdate() {
        return hrDimissionApplicationdate;
    }

    public void setHrDimissionApplicationdate(Date hrDimissionApplicationdate) {
        this.hrDimissionApplicationdate = hrDimissionApplicationdate;
    }

    public Date getHrDimissionDeparturedate() {
        return hrDimissionDeparturedate;
    }

    public void setHrDimissionDeparturedate(Date hrDimissionDeparturedate) {
        this.hrDimissionDeparturedate = hrDimissionDeparturedate;
    }

    public Date getHrDimissionCutoffdate() {
        return hrDimissionCutoffdate;
    }

    public void setHrDimissionCutoffdate(Date hrDimissionCutoffdate) {
        this.hrDimissionCutoffdate = hrDimissionCutoffdate;
    }

    public String getHrDimissionMonthly() {
        return hrDimissionMonthly;
    }

    public void setHrDimissionMonthly(String hrDimissionMonthly) {
        this.hrDimissionMonthly = hrDimissionMonthly == null ? null : hrDimissionMonthly.trim();
    }

    public String getHrDimissionProcedure() {
        return hrDimissionProcedure;
    }

    public void setHrDimissionProcedure(String hrDimissionProcedure) {
        this.hrDimissionProcedure = hrDimissionProcedure == null ? null : hrDimissionProcedure.trim();
    }

    public String getHrDimissionWhy() {
        return hrDimissionWhy;
    }

    public void setHrDimissionWhy(String hrDimissionWhy) {
        this.hrDimissionWhy = hrDimissionWhy == null ? null : hrDimissionWhy.trim();
    }

    public String getHrDimissionRemark() {
        return hrDimissionRemark;
    }

    public void setHrDimissionRemark(String hrDimissionRemark) {
        this.hrDimissionRemark = hrDimissionRemark == null ? null : hrDimissionRemark.trim();
    }

    public String getHrDimissionUsername() {
        return hrDimissionUsername;
    }

    public void setHrDimissionUsername(String hrDimissionUsername) {
        this.hrDimissionUsername = hrDimissionUsername == null ? null : hrDimissionUsername.trim();
    }

    public Date getHrDimissionCurrenttime() {
        return hrDimissionCurrenttime;
    }

    public void setHrDimissionCurrenttime(Date hrDimissionCurrenttime) {
        this.hrDimissionCurrenttime = hrDimissionCurrenttime;
    }
}