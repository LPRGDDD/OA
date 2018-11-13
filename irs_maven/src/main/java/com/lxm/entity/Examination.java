package com.lxm.entity;

public class Examination {
    private Integer exid;

    private String department;

    private String staff;

    private String departmentName;
    
    private String	staffName;
    public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public Integer getExid() {
        return exid;
    }

    public void setExid(Integer exid) {
        this.exid = exid;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department == null ? null : department.trim();
    }

    public String getStaff() {
        return staff;
    }

    public Examination() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Examination(Integer exid, String department, String staff, String departmentName, String staffName) {
		super();
		this.exid = exid;
		this.department = department;
		this.staff = staff;
		this.departmentName = departmentName;
		this.staffName = staffName;
	}

	public void setStaff(String staff) {
        this.staff = staff == null ? null : staff.trim();
    }
}