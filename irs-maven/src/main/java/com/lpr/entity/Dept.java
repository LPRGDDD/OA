package com.lpr.entity;

public class Dept {
	/**
	 * 部门信息表
	 */
    private Integer deptId;//部门编号

    private String deptName;//部门单位名称

    private Integer deptNumber;//部门人数

    private String deptAddress;//部门地址

    private String deptZhuguan;//部门主管

    private String deptAid;//部门助理

    private String deptManager;//主管领导

    private Integer deptStatus;//部门状态

    private String deptBranchlead;//分管领导

    private String deptPhone;//部门电话

    private String deptFax;//部门传真

    private String deptFunction;//部门职能

    private String deptRole;//部门角色

    private String deptSequence;//部门排序号
    /*单位信息表*/
    private DwinFormation dwinformation;

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName == null ? null : deptName.trim();
    }

    public Integer getDeptNumber() {
        return deptNumber;
    }

    public void setDeptNumber(Integer deptNumber) {
        this.deptNumber = deptNumber;
    }

    public String getDeptAddress() {
        return deptAddress;
    }

    public void setDeptAddress(String deptAddress) {
        this.deptAddress = deptAddress == null ? null : deptAddress.trim();
    }

    public String getDeptZhuguan() {
        return deptZhuguan;
    }

    public void setDeptZhuguan(String deptZhuguan) {
        this.deptZhuguan = deptZhuguan == null ? null : deptZhuguan.trim();
    }

    public String getDeptAid() {
        return deptAid;
    }

    public void setDeptAid(String deptAid) {
        this.deptAid = deptAid == null ? null : deptAid.trim();
    }

    public String getDeptManager() {
        return deptManager;
    }

    public void setDeptManager(String deptManager) {
        this.deptManager = deptManager == null ? null : deptManager.trim();
    }

    public Integer getDeptStatus() {
        return deptStatus;
    }

    public void setDeptStatus(Integer deptStatus) {
        this.deptStatus = deptStatus;
    }

    public String getDeptBranchlead() {
        return deptBranchlead;
    }

    public void setDeptBranchlead(String deptBranchlead) {
        this.deptBranchlead = deptBranchlead == null ? null : deptBranchlead.trim();
    }

    public String getDeptPhone() {
        return deptPhone;
    }

    public void setDeptPhone(String deptPhone) {
        this.deptPhone = deptPhone == null ? null : deptPhone.trim();
    }

    public String getDeptFax() {
        return deptFax;
    }

    public void setDeptFax(String deptFax) {
        this.deptFax = deptFax == null ? null : deptFax.trim();
    }

    public String getDeptFunction() {
        return deptFunction;
    }

    public void setDeptFunction(String deptFunction) {
        this.deptFunction = deptFunction == null ? null : deptFunction.trim();
    }

    public String getDeptRole() {
        return deptRole;
    }

    public void setDeptRole(String deptRole) {
        this.deptRole = deptRole == null ? null : deptRole.trim();
    }

    public String getDeptSequence() {
        return deptSequence;
    }

    public void setDeptSequence(String deptSequence) {
        this.deptSequence = deptSequence == null ? null : deptSequence.trim();
    }
	public DwinFormation getDwinformation() {
		return dwinformation;
	}

	public void setDwinformation(DwinFormation dwinformation) {
		this.dwinformation = dwinformation;
	}
}