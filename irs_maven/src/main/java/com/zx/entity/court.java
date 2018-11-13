package com.zx.entity;

public class court {
    private Integer cId;

    private Integer userId;

    private Integer tId;

    private String cName;

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName == null ? null : cName.trim();
    }

	@Override
	public String toString() {
		return "court [cId=" + cId + ", userId=" + userId + ", tId=" + tId + ", cName=" + cName + "]";
	}
    
}