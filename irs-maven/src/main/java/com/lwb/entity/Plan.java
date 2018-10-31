package com.lwb.entity;

import com.irs.pojo.TbAdmin;

public class Plan {

	private Integer hrPlanId;

    private Integer id;
    private TbAdmin admin;

    private String hrPlanNumber;

    private String hrPlanName;

    private String hrPlanDitch;

    private String hrPlanBudget;

    private String hrPlanStartdate;

    private String hrPlanDateclosed;

    private Integer hrPlanCount;

    private String hrPlanExplain;

    private String hrPlanRemark;

    private String hrPlanAdjunct;

    private Integer hrPlanState;

    private String hrPlanAuditingdate;

    private String hrPlanUsername;

    private String hrPlanDepartment;

    private String hrPlanPost;

    private String hrPlanSkilldate;

	public Integer getHrPlanId() {
		return hrPlanId;
	}

	public void setHrPlanId(Integer hrPlanId) {
		this.hrPlanId = hrPlanId;
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

	public String getHrPlanNumber() {
		return hrPlanNumber;
	}

	public void setHrPlanNumber(String hrPlanNumber) {
		this.hrPlanNumber = hrPlanNumber;
	}

	public String getHrPlanName() {
		return hrPlanName;
	}

	public void setHrPlanName(String hrPlanName) {
		this.hrPlanName = hrPlanName;
	}

	public String getHrPlanDitch() {
		return hrPlanDitch;
	}

	public void setHrPlanDitch(String hrPlanDitch) {
		this.hrPlanDitch = hrPlanDitch;
	}

	public String getHrPlanBudget() {
		return hrPlanBudget;
	}

	public void setHrPlanBudget(String hrPlanBudget) {
		this.hrPlanBudget = hrPlanBudget;
	}

	public String getHrPlanStartdate() {
		return hrPlanStartdate;
	}

	public void setHrPlanStartdate(String hrPlanStartdate) {
		this.hrPlanStartdate = hrPlanStartdate;
	}

	public String getHrPlanDateclosed() {
		return hrPlanDateclosed;
	}

	public void setHrPlanDateclosed(String hrPlanDateclosed) {
		this.hrPlanDateclosed = hrPlanDateclosed;
	}

	public Integer getHrPlanCount() {
		return hrPlanCount;
	}

	public void setHrPlanCount(Integer hrPlanCount) {
		this.hrPlanCount = hrPlanCount;
	}

	public String getHrPlanExplain() {
		return hrPlanExplain;
	}

	public void setHrPlanExplain(String hrPlanExplain) {
		this.hrPlanExplain = hrPlanExplain;
	}

	public String getHrPlanRemark() {
		return hrPlanRemark;
	}

	public void setHrPlanRemark(String hrPlanRemark) {
		this.hrPlanRemark = hrPlanRemark;
	}

	public String getHrPlanAdjunct() {
		return hrPlanAdjunct;
	}

	public void setHrPlanAdjunct(String hrPlanAdjunct) {
		this.hrPlanAdjunct = hrPlanAdjunct;
	}

	public Integer getHrPlanState() {
		return hrPlanState;
	}

	public void setHrPlanState(Integer hrPlanState) {
		this.hrPlanState = hrPlanState;
	}

	public String getHrPlanAuditingdate() {
		return hrPlanAuditingdate;
	}

	public void setHrPlanAuditingdate(String hrPlanAuditingdate) {
		this.hrPlanAuditingdate = hrPlanAuditingdate;
	}

	public String getHrPlanUsername() {
		return hrPlanUsername;
	}

	public void setHrPlanUsername(String hrPlanUsername) {
		this.hrPlanUsername = hrPlanUsername;
	}

	public String getHrPlanDepartment() {
		return hrPlanDepartment;
	}

	public void setHrPlanDepartment(String hrPlanDepartment) {
		this.hrPlanDepartment = hrPlanDepartment;
	}

	public String getHrPlanPost() {
		return hrPlanPost;
	}

	public void setHrPlanPost(String hrPlanPost) {
		this.hrPlanPost = hrPlanPost;
	}

	public String getHrPlanSkilldate() {
		return hrPlanSkilldate;
	}

	public void setHrPlanSkilldate(String hrPlanSkilldate) {
		this.hrPlanSkilldate = hrPlanSkilldate;
	}

	public Plan(Integer hrPlanId, Integer id, TbAdmin admin, String hrPlanNumber, String hrPlanName, String hrPlanDitch,
			String hrPlanBudget, String hrPlanStartdate, String hrPlanDateclosed, Integer hrPlanCount,
			String hrPlanExplain, String hrPlanRemark, String hrPlanAdjunct, Integer hrPlanState,
			String hrPlanAuditingdate, String hrPlanUsername, String hrPlanDepartment, String hrPlanPost,
			String hrPlanSkilldate) {
		super();
		this.hrPlanId = hrPlanId;
		this.id = id;
		this.admin = admin;
		this.hrPlanNumber = hrPlanNumber;
		this.hrPlanName = hrPlanName;
		this.hrPlanDitch = hrPlanDitch;
		this.hrPlanBudget = hrPlanBudget;
		this.hrPlanStartdate = hrPlanStartdate;
		this.hrPlanDateclosed = hrPlanDateclosed;
		this.hrPlanCount = hrPlanCount;
		this.hrPlanExplain = hrPlanExplain;
		this.hrPlanRemark = hrPlanRemark;
		this.hrPlanAdjunct = hrPlanAdjunct;
		this.hrPlanState = hrPlanState;
		this.hrPlanAuditingdate = hrPlanAuditingdate;
		this.hrPlanUsername = hrPlanUsername;
		this.hrPlanDepartment = hrPlanDepartment;
		this.hrPlanPost = hrPlanPost;
		this.hrPlanSkilldate = hrPlanSkilldate;
	}

	public Plan() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Plan [hrPlanId=" + hrPlanId + ", id=" + id + ", admin=" + admin + ", hrPlanNumber=" + hrPlanNumber
				+ ", hrPlanName=" + hrPlanName + ", hrPlanDitch=" + hrPlanDitch + ", hrPlanBudget=" + hrPlanBudget
				+ ", hrPlanStartdate=" + hrPlanStartdate + ", hrPlanDateclosed=" + hrPlanDateclosed + ", hrPlanCount="
				+ hrPlanCount + ", hrPlanExplain=" + hrPlanExplain + ", hrPlanRemark=" + hrPlanRemark
				+ ", hrPlanAdjunct=" + hrPlanAdjunct + ", hrPlanState=" + hrPlanState + ", hrPlanAuditingdate="
				+ hrPlanAuditingdate + ", hrPlanUsername=" + hrPlanUsername + ", hrPlanDepartment=" + hrPlanDepartment
				+ ", hrPlanPost=" + hrPlanPost + ", hrPlanSkilldate=" + hrPlanSkilldate + "]";
	}

    
   
}