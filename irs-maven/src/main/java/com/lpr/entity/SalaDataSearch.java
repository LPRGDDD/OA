package com.lpr.entity;

public class SalaDataSearch {
	private String nickname;
	private Integer deptId;
	private Integer createTimeStart;
	private Integer createTimeEnd;
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public Integer getDeptId() {
		return deptId;
	}
	public void setDeptId(Integer deptId) {
		this.deptId = deptId;
	}
	public Integer getCreateTimeStart() {
		return createTimeStart;
	}
	public void setCreateTimeStart(Integer createTimeStart) {
		this.createTimeStart = createTimeStart;
	}
	public Integer getCreateTimeEnd() {
		return createTimeEnd;
	}
	public void setCreateTimeEnd(Integer createTimeEnd) {
		this.createTimeEnd = createTimeEnd;
	}
	
}
