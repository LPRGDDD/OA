package com.lxm.entity;

public class SpringFestival {
	private int sfId;
	private String sfName;
	private String sfTime;
	private String sfTimeEnd;
	public int getSfId() {
		return sfId;
	}
	public void setSfId(int sfId) {
		this.sfId = sfId;
	}
	public String getSfName() {
		return sfName;
	}
	public void setSfName(String sfName) {
		this.sfName = sfName;
	}
	public String getSfTime() {
		return sfTime;
	}
	public void setSfTime(String sfTime) {
		this.sfTime = sfTime;
	}
	public String getSfTimeEnd() {
		return sfTimeEnd;
	}
	public void setSfTimeEnd(String sfTimeEnd) {
		this.sfTimeEnd = sfTimeEnd;
	}
	public SpringFestival(int sfId, String sfName, String sfTime, String sfTimeEnd) {
		super();
		this.sfId = sfId;
		this.sfName = sfName;
		this.sfTime = sfTime;
		this.sfTimeEnd = sfTimeEnd;
	}
	public SpringFestival() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
