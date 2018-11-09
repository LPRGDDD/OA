package com.lxm.entity;


public class DutyRoster {
    private Integer drid;

    private Integer scid;
    
    private Integer id;//自己添加的字段  数据库中没有
    
    public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	private String drname1;
    
    private String drnameId;
    
    private String drnameId2;
    
	private String drname2;

    private String dtname;

    private String dtDate_Start;

    private String dtDate_End;

    private Integer dtstate;

    private Integer monday;

    private Integer tuesday;

    private Integer wednesday;

    private Integer thursday;

    private Integer friday;

    private Integer saturday;

    private Integer sunday;

	public Integer getDrid() {
		return drid;
	}

	public void setDrid(Integer drid) {
		this.drid = drid;
	}

	public Integer getScid() {
		return scid;
	}

	public void setScid(Integer scid) {
		this.scid = scid;
	}

	public String getDrname1() {
		return drname1;
	}

	public void setDrname1(String drname1) {
		this.drname1 = drname1;
	}

	public String getDrnameId() {
		return drnameId;
	}

	public void setDrnameId(String drnameId) {
		this.drnameId = drnameId;
	}

	public String getDrnameId2() {
		return drnameId2;
	}

	public void setDrnameId2(String drnameId2) {
		this.drnameId2 = drnameId2;
	}

	public String getDrname2() {
		return drname2;
	}

	public void setDrname2(String drname2) {
		this.drname2 = drname2;
	}

	public String getDtname() {
		return dtname;
	}

	public void setDtname(String dtname) {
		this.dtname = dtname;
	}

	public String getDtDate_Start() {
		return dtDate_Start;
	}

	public void setDtDate_Start(String dtDate_Start) {
		this.dtDate_Start = dtDate_Start;
	}

	public String getDtDate_End() {
		return dtDate_End;
	}

	public void setDtDate_End(String dtDate_End) {
		this.dtDate_End = dtDate_End;
	}

	public Integer getDtstate() {
		return dtstate;
	}

	public void setDtstate(Integer dtstate) {
		this.dtstate = dtstate;
	}

	public Integer getMonday() {
		return monday;
	}

	public void setMonday(Integer monday) {
		this.monday = monday;
	}

	public Integer getTuesday() {
		return tuesday;
	}

	public void setTuesday(Integer tuesday) {
		this.tuesday = tuesday;
	}

	public Integer getWednesday() {
		return wednesday;
	}

	public void setWednesday(Integer wednesday) {
		this.wednesday = wednesday;
	}

	public Integer getThursday() {
		return thursday;
	}

	public void setThursday(Integer thursday) {
		this.thursday = thursday;
	}

	public Integer getFriday() {
		return friday;
	}

	public void setFriday(Integer friday) {
		this.friday = friday;
	}

	public Integer getSaturday() {
		return saturday;
	}

	public void setSaturday(Integer saturday) {
		this.saturday = saturday;
	}

	public Integer getSunday() {
		return sunday;
	}

	public void setSunday(Integer sunday) {
		this.sunday = sunday;
	}

	@Override
	public String toString() {
		return "DutyRoster [drid=" + drid + ", scid=" + scid + ", drname1=" + drname1 + ", drnameId=" + drnameId
				+ ", drnameId2=" + drnameId2 + ", drname2=" + drname2 + ", dtname=" + dtname + ", dtDate_Start="
				+ dtDate_Start + ", dtDate_End=" + dtDate_End + ", dtstate=" + dtstate + ", monday=" + monday
				+ ", tuesday=" + tuesday + ", wednesday=" + wednesday + ", thursday=" + thursday + ", friday=" + friday
				+ ", saturday=" + saturday + ", sunday=" + sunday + "]";
	}


}