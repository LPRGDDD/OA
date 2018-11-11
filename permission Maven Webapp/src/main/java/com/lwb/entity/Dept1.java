package com.lwb.entity;

import java.util.List;

public class Dept1 {
	 private Integer deptId;

	    private Integer dwinformationId;

	    private String deptName;

	    private Integer deptNumber;

	    private String deptAddress;

	    private String deptZhuguan;

	    private String deptAid;

	    private String deptManager;

	    private Integer deptStatus;

	    private String deptBranchlead;

	    private String deptPhone;

	    private String deptFax;

	    private String deptFunction;

	    private String deptRole;

	    private String deptSequence;
	    
	    private List<Record> record;
	    
	    

	    public List<Record> getRecord() {
			return record;
		}

		public void setRecord(List<Record> record) {
			this.record = record;
		}

		public Integer getDeptId() {
	        return deptId;
	    }

	    public void setDeptId(Integer deptId) {
	        this.deptId = deptId;
	    }

	    public Integer getDwinformationId() {
	        return dwinformationId;
	    }

	    public void setDwinformationId(Integer dwinformationId) {
	        this.dwinformationId = dwinformationId;
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

		@Override
		public String toString() {
			return "Dept [deptId=" + deptId + ", dwinformationId=" + dwinformationId + ", deptName=" + deptName
					+ ", deptNumber=" + deptNumber + ", deptAddress=" + deptAddress + ", deptZhuguan=" + deptZhuguan
					+ ", deptAid=" + deptAid + ", deptManager=" + deptManager + ", deptStatus=" + deptStatus
					+ ", deptBranchlead=" + deptBranchlead + ", deptPhone=" + deptPhone + ", deptFax=" + deptFax
					+ ", deptFunction=" + deptFunction + ", deptRole=" + deptRole + ", deptSequence=" + deptSequence
					+ ", record=" + record + "]";
		}

		public Dept1(Integer deptId, Integer dwinformationId, String deptName, Integer deptNumber, String deptAddress,
				String deptZhuguan, String deptAid, String deptManager, Integer deptStatus, String deptBranchlead,
				String deptPhone, String deptFax, String deptFunction, String deptRole, String deptSequence,
				List<Record> record) {
			super();
			this.deptId = deptId;
			this.dwinformationId = dwinformationId;
			this.deptName = deptName;
			this.deptNumber = deptNumber;
			this.deptAddress = deptAddress;
			this.deptZhuguan = deptZhuguan;
			this.deptAid = deptAid;
			this.deptManager = deptManager;
			this.deptStatus = deptStatus;
			this.deptBranchlead = deptBranchlead;
			this.deptPhone = deptPhone;
			this.deptFax = deptFax;
			this.deptFunction = deptFunction;
			this.deptRole = deptRole;
			this.deptSequence = deptSequence;
			this.record = record;
		}

		public Dept1() {
			super();
			// TODO Auto-generated constructor stub
		}

	    
	}