package com.zx.entity;

import java.util.Date;

public class fafang {
    private Integer faId;

    private Integer raId;

    private String faName;

    private String faType;

    private String faShen;

    private Integer faNum;

    private Date faDate;

    private String faShenpi;

    private Integer faStatu;

    private String faCaozuo;

    private String faBei;

    private Integer faStatu2;

    public Integer getFaId() {
        return faId;
    }

    public void setFaId(Integer faId) {
        this.faId = faId;
    }

    public Integer getRaId() {
        return raId;
    }

    public void setRaId(Integer raId) {
        this.raId = raId;
    }

    public String getFaName() {
        return faName;
    }

    public void setFaName(String faName) {
        this.faName = faName == null ? null : faName.trim();
    }

    public String getFaType() {
        return faType;
    }

    public void setFaType(String faType) {
        this.faType = faType == null ? null : faType.trim();
    }

    public String getFaShen() {
        return faShen;
    }

    public void setFaShen(String faShen) {
        this.faShen = faShen == null ? null : faShen.trim();
    }

    public Integer getFaNum() {
        return faNum;
    }

    public void setFaNum(Integer faNum) {
        this.faNum = faNum;
    }

    public Date getFaDate() {
        return faDate;
    }

    public void setFaDate(Date faDate) {
        this.faDate = faDate;
    }

    public String getFaShenpi() {
        return faShenpi;
    }

    public void setFaShenpi(String faShenpi) {
        this.faShenpi = faShenpi == null ? null : faShenpi.trim();
    }

    public Integer getFaStatu() {
        return faStatu;
    }

    public void setFaStatu(Integer faStatu) {
        this.faStatu = faStatu;
    }

    public String getFaCaozuo() {
        return faCaozuo;
    }

    public void setFaCaozuo(String faCaozuo) {
        this.faCaozuo = faCaozuo == null ? null : faCaozuo.trim();
    }

    public String getFaBei() {
        return faBei;
    }

    public void setFaBei(String faBei) {
        this.faBei = faBei == null ? null : faBei.trim();
    }

    public Integer getFaStatu2() {
        return faStatu2;
    }

    public void setFaStatu2(Integer faStatu2) {
        this.faStatu2 = faStatu2;
    }
}