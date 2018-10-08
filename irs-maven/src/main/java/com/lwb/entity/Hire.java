package com.lwb.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.irs.pojo.TbAdmin;
import com.lpr.entity.Dept;

public class Hire {
    private Integer hrHireId;
    
    private Integer hrPlanId;
    private Plan paln;
    
    private Integer id;
    private TbAdmin admin;
    
    private Integer hrTalentsId;
    private Talents talents;
    
    private Integer deptId;
    private Dept dept;
    
    private String hrHireName;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrHireDate;

    private String hrHireType;

    private String hrHireClassa;

    private String hrHireDuty;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrHireEntrytime;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrHireStartingsalary;

    private String hrHireRemark;

    private String hrHireUsername;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrHireCurrenttime;
    
    private String hrHireRelation;

	public Integer getHrHireId() {
		return hrHireId;
	}

	public void setHrHireId(Integer hrHireId) {
		this.hrHireId = hrHireId;
	}

	public Integer getHrPlanId() {
		return hrPlanId;
	}

	public void setHrPlanId(Integer hrPlanId) {
		this.hrPlanId = hrPlanId;
	}

	public Plan getPaln() {
		return paln;
	}

	public void setPaln(Plan paln) {
		this.paln = paln;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public TbAdmin getAdmin() {
		return admin;
	}

	public void setAdmin(TbAdmin admin) {
		this.admin = admin;
	}

	public Integer getHrTalentsId() {
		return hrTalentsId;
	}

	public void setHrTalentsId(Integer hrTalentsId) {
		this.hrTalentsId = hrTalentsId;
	}

	public Talents getTalents() {
		return talents;
	}

	public void setTalents(Talents talents) {
		this.talents = talents;
	}

	public Integer getDeptId() {
		return deptId;
	}

	public void setDeptId(Integer deptId) {
		this.deptId = deptId;
	}

	public Dept getDept() {
		return dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public String getHrHireName() {
		return hrHireName;
	}

	public void setHrHireName(String hrHireName) {
		this.hrHireName = hrHireName;
	}

	public Date getHrHireDate() {
		return hrHireDate;
	}

	public void setHrHireDate(Date hrHireDate) {
		this.hrHireDate = hrHireDate;
	}

	public String getHrHireType() {
		return hrHireType;
	}

	public void setHrHireType(String hrHireType) {
		this.hrHireType = hrHireType;
	}

	public String getHrHireClassa() {
		return hrHireClassa;
	}

	public void setHrHireClassa(String hrHireClassa) {
		this.hrHireClassa = hrHireClassa;
	}

	public String getHrHireDuty() {
		return hrHireDuty;
	}

	public void setHrHireDuty(String hrHireDuty) {
		this.hrHireDuty = hrHireDuty;
	}

	public Date getHrHireEntrytime() {
		return hrHireEntrytime;
	}

	public void setHrHireEntrytime(Date hrHireEntrytime) {
		this.hrHireEntrytime = hrHireEntrytime;
	}

	public Date getHrHireStartingsalary() {
		return hrHireStartingsalary;
	}

	public void setHrHireStartingsalary(Date hrHireStartingsalary) {
		this.hrHireStartingsalary = hrHireStartingsalary;
	}

	public String getHrHireRemark() {
		return hrHireRemark;
	}

	public void setHrHireRemark(String hrHireRemark) {
		this.hrHireRemark = hrHireRemark;
	}

	public String getHrHireUsername() {
		return hrHireUsername;
	}

	public void setHrHireUsername(String hrHireUsername) {
		this.hrHireUsername = hrHireUsername;
	}

	public Date getHrHireCurrenttime() {
		return hrHireCurrenttime;
	}

	public void setHrHireCurrenttime(Date hrHireCurrenttime) {
		this.hrHireCurrenttime = hrHireCurrenttime;
	}

	public String getHrHireRelation() {
		return hrHireRelation;
	}

	public void setHrHireRelation(String hrHireRelation) {
		this.hrHireRelation = hrHireRelation;
	}

	public Hire(Integer hrHireId, Integer hrPlanId, Plan paln, Integer id, TbAdmin admin, Integer hrTalentsId,
			Talents talents, Integer deptId, Dept dept, String hrHireName, Date hrHireDate, String hrHireType,
			String hrHireClassa, String hrHireDuty, Date hrHireEntrytime, Date hrHireStartingsalary,
			String hrHireRemark, String hrHireUsername, Date hrHireCurrenttime, String hrHireRelation) {
		super();
		this.hrHireId = hrHireId;
		this.hrPlanId = hrPlanId;
		this.paln = paln;
		this.id = id;
		this.admin = admin;
		this.hrTalentsId = hrTalentsId;
		this.talents = talents;
		this.deptId = deptId;
		this.dept = dept;
		this.hrHireName = hrHireName;
		this.hrHireDate = hrHireDate;
		this.hrHireType = hrHireType;
		this.hrHireClassa = hrHireClassa;
		this.hrHireDuty = hrHireDuty;
		this.hrHireEntrytime = hrHireEntrytime;
		this.hrHireStartingsalary = hrHireStartingsalary;
		this.hrHireRemark = hrHireRemark;
		this.hrHireUsername = hrHireUsername;
		this.hrHireCurrenttime = hrHireCurrenttime;
		this.hrHireRelation = hrHireRelation;
	}

	public Hire() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Hire [hrHireId=" + hrHireId + ", hrPlanId=" + hrPlanId + ", paln=" + paln + ", id=" + id + ", admin="
				+ admin + ", hrTalentsId=" + hrTalentsId + ", talents=" + talents + ", deptId=" + deptId + ", dept="
				+ dept + ", hrHireName=" + hrHireName + ", hrHireDate=" + hrHireDate + ", hrHireType=" + hrHireType
				+ ", hrHireClassa=" + hrHireClassa + ", hrHireDuty=" + hrHireDuty + ", hrHireEntrytime="
				+ hrHireEntrytime + ", hrHireStartingsalary=" + hrHireStartingsalary + ", hrHireRemark=" + hrHireRemark
				+ ", hrHireUsername=" + hrHireUsername + ", hrHireCurrenttime=" + hrHireCurrenttime
				+ ", hrHireRelation=" + hrHireRelation + "]";
	}

	
    
}