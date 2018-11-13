package com.zx.entity;

public class Applyset {
    private Integer asId;

    private Integer apId;

    private Integer userId;

    private String asCun;

    private String asType;

    private String asShop;

    private String asPrice;

    private Integer asNum;

    private Integer asBumen;

    private String asBei;

    public Integer getAsId() {
        return asId;
    }

    public void setAsId(Integer asId) {
        this.asId = asId;
    }

    public Integer getApId() {
        return apId;
    }

    public void setApId(Integer apId) {
        this.apId = apId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getAsCun() {
        return asCun;
    }

    public void setAsCun(String asCun) {
        this.asCun = asCun == null ? null : asCun.trim();
    }

    public String getAsType() {
        return asType;
    }

    public void setAsType(String asType) {
        this.asType = asType == null ? null : asType.trim();
    }

    public String getAsShop() {
        return asShop;
    }

    public void setAsShop(String asShop) {
        this.asShop = asShop == null ? null : asShop.trim();
    }

    public String getAsPrice() {
        return asPrice;
    }

    public void setAsPrice(String asPrice) {
        this.asPrice = asPrice == null ? null : asPrice.trim();
    }

    public Integer getAsNum() {
        return asNum;
    }

    public void setAsNum(Integer asNum) {
        this.asNum = asNum;
    }

    public Integer getAsBumen() {
        return asBumen;
    }

    public void setAsBumen(Integer asBumen) {
        this.asBumen = asBumen;
    }

    public String getAsBei() {
        return asBei;
    }

    public void setAsBei(String asBei) {
        this.asBei = asBei == null ? null : asBei.trim();
    }
}