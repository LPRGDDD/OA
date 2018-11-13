package com.lpr.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class SalaryFlow {
	/**
	 * 薪酬管理中的工资流程
	 */
    private Integer salaryflowId;//工资流程编号
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date salaryflowCreatetime;//流程创建时间

    private String salaryflowCreator;//流程创建人
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date salaryflowBegintime;//流程起始时间
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date salaryflowEndtime;//流程截止时间

    private String salaryflowYear;//工资年份

    private String salaryflowMonth;//工资月份

    private Integer salaryflowStatus;//工资流程的状态

    private String salaryflowMark;//备注

	public Integer getSalaryflowId() {
		return salaryflowId;
	}

	public void setSalaryflowId(Integer salaryflowId) {
		this.salaryflowId = salaryflowId;
	}

	public Date getSalaryflowCreatetime() {
		return salaryflowCreatetime;
	}

	public void setSalaryflowCreatetime(Date salaryflowCreatetime) {
		this.salaryflowCreatetime = salaryflowCreatetime;
	}

	public String getSalaryflowCreator() {
		return salaryflowCreator;
	}

	public void setSalaryflowCreator(String salaryflowCreator) {
		this.salaryflowCreator = salaryflowCreator;
	}

	public Date getSalaryflowBegintime() {
		return salaryflowBegintime;
	}

	public void setSalaryflowBegintime(Date salaryflowBegintime) {
		this.salaryflowBegintime = salaryflowBegintime;
	}

	public Date getSalaryflowEndtime() {
		return salaryflowEndtime;
	}

	public void setSalaryflowEndtime(Date salaryflowEndtime) {
		this.salaryflowEndtime = salaryflowEndtime;
	}

	public String getSalaryflowYear() {
		return salaryflowYear;
	}

	public void setSalaryflowYear(String salaryflowYear) {
		this.salaryflowYear = salaryflowYear;
	}

	public String getSalaryflowMonth() {
		return salaryflowMonth;
	}

	public void setSalaryflowMonth(String salaryflowMonth) {
		this.salaryflowMonth = salaryflowMonth;
	}

	public Integer getSalaryflowStatus() {
		return salaryflowStatus;
	}

	public void setSalaryflowStatus(Integer salaryflowStatus) {
		this.salaryflowStatus = salaryflowStatus;
	}

	public String getSalaryflowMark() {
		return salaryflowMark;
	}

	public void setSalaryflowMark(String salaryflowMark) {
		this.salaryflowMark = salaryflowMark;
	}

	public SalaryFlow(Integer salaryflowId, Date salaryflowCreatetime, String salaryflowCreator,
			Date salaryflowBegintime, Date salaryflowEndtime, String salaryflowYear, String salaryflowMonth,
			Integer salaryflowStatus, String salaryflowMark) {
		super();
		this.salaryflowId = salaryflowId;
		this.salaryflowCreatetime = salaryflowCreatetime;
		this.salaryflowCreator = salaryflowCreator;
		this.salaryflowBegintime = salaryflowBegintime;
		this.salaryflowEndtime = salaryflowEndtime;
		this.salaryflowYear = salaryflowYear;
		this.salaryflowMonth = salaryflowMonth;
		this.salaryflowStatus = salaryflowStatus;
		this.salaryflowMark = salaryflowMark;
	}

	public SalaryFlow() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "SalaryFlow [salaryflowId=" + salaryflowId + ", salaryflowCreatetime=" + salaryflowCreatetime
				+ ", salaryflowCreator=" + salaryflowCreator + ", salaryflowBegintime=" + salaryflowBegintime
				+ ", salaryflowEndtime=" + salaryflowEndtime + ", salaryflowYear=" + salaryflowYear
				+ ", salaryflowMonth=" + salaryflowMonth + ", salaryflowStatus=" + salaryflowStatus
				+ ", salaryflowMark=" + salaryflowMark + "]";
	}

    
    
}