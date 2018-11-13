package com.zx.entity;

import java.util.Date;

public class rati {
    private Integer raId;

    private Integer apId;

    private String raDeng;

    private Integer raSum;

    private Date raDate;

    public Integer getRaId() {
        return raId;
    }

    public void setRaId(Integer raId) {
        this.raId = raId;
    }

    public Integer getApId() {
        return apId;
    }

    public void setApId(Integer apId) {
        this.apId = apId;
    }

    public String getRaDeng() {
        return raDeng;
    }

    public void setRaDeng(String raDeng) {
        this.raDeng = raDeng == null ? null : raDeng.trim();
    }

    public Integer getRaSum() {
        return raSum;
    }

    public void setRaSum(Integer raSum) {
        this.raSum = raSum;
    }

    public Date getRaDate() {
        return raDate;
    }

    public void setRaDate(Date raDate) {
        this.raDate = raDate;
    }
}