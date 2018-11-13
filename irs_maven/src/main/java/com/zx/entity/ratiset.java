package com.zx.entity;

import java.util.Date;

public class ratiset {
    private Integer rsId;

    private Integer raId;

    private String rsKu;

    private String rsShop;

    private String rsDeng;

    private String rsWorker;

    private Integer rsSum;

    private Date rsDate;

    public Integer getRsId() {
        return rsId;
    }

    public void setRsId(Integer rsId) {
        this.rsId = rsId;
    }

    public Integer getRaId() {
        return raId;
    }

    public void setRaId(Integer raId) {
        this.raId = raId;
    }

    public String getRsKu() {
        return rsKu;
    }

    public void setRsKu(String rsKu) {
        this.rsKu = rsKu == null ? null : rsKu.trim();
    }

    public String getRsShop() {
        return rsShop;
    }

    public void setRsShop(String rsShop) {
        this.rsShop = rsShop == null ? null : rsShop.trim();
    }

    public String getRsDeng() {
        return rsDeng;
    }

    public void setRsDeng(String rsDeng) {
        this.rsDeng = rsDeng == null ? null : rsDeng.trim();
    }

    public String getRsWorker() {
        return rsWorker;
    }

    public void setRsWorker(String rsWorker) {
        this.rsWorker = rsWorker == null ? null : rsWorker.trim();
    }

    public Integer getRsSum() {
        return rsSum;
    }

    public void setRsSum(Integer rsSum) {
        this.rsSum = rsSum;
    }

    public Date getRsDate() {
        return rsDate;
    }

    public void setRsDate(Date rsDate) {
        this.rsDate = rsDate;
    }
}