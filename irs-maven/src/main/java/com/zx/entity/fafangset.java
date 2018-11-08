package com.zx.entity;

public class fafangset {
    private Integer fsId;

    private Integer faId;

    private String fsName;

    private String fsShenlin;

    private Integer fsNum;

    private Integer fsStatu;

    private String fsCaozuo;

    private String fsBeizhu;

    public Integer getFsId() {
        return fsId;
    }

    public void setFsId(Integer fsId) {
        this.fsId = fsId;
    }

    public Integer getFaId() {
        return faId;
    }

    public void setFaId(Integer faId) {
        this.faId = faId;
    }

    public String getFsName() {
        return fsName;
    }

    public void setFsName(String fsName) {
        this.fsName = fsName == null ? null : fsName.trim();
    }

    public String getFsShenlin() {
        return fsShenlin;
    }

    public void setFsShenlin(String fsShenlin) {
        this.fsShenlin = fsShenlin == null ? null : fsShenlin.trim();
    }

    public Integer getFsNum() {
        return fsNum;
    }

    public void setFsNum(Integer fsNum) {
        this.fsNum = fsNum;
    }

    public Integer getFsStatu() {
        return fsStatu;
    }

    public void setFsStatu(Integer fsStatu) {
        this.fsStatu = fsStatu;
    }

    public String getFsCaozuo() {
        return fsCaozuo;
    }

    public void setFsCaozuo(String fsCaozuo) {
        this.fsCaozuo = fsCaozuo == null ? null : fsCaozuo.trim();
    }

    public String getFsBeizhu() {
        return fsBeizhu;
    }

    public void setFsBeizhu(String fsBeizhu) {
        this.fsBeizhu = fsBeizhu == null ? null : fsBeizhu.trim();
    }
}