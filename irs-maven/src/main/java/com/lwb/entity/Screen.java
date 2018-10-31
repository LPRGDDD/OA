package com.lwb.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.irs.pojo.TbAdmin;

public class Screen {
    private Integer hrScreenId;
    
    private Integer hrTalentsId;
    private Talents talent;
    
    private Integer hrPlanId;
    private Plan plan;

    private Integer id;
    private TbAdmin admin;

    private Integer hrScreenScreening;

    private String hrScreenWay;

    private String hrScreenContent;

    private String hrScreenOpinion;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrScreenInterview;

    private String hrScreenWhether;

    private String hrScreenUsername;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrScreenCurrenttime;
	public Integer getHrScreenId() {
		return hrScreenId;
	}
	public void setHrScreenId(Integer hrScreenId) {
		this.hrScreenId = hrScreenId;
	}
	public Integer getHrTalentsId() {
		return hrTalentsId;
	}
	public void setHrTalentsId(Integer hrTalentsId) {
		this.hrTalentsId = hrTalentsId;
	}
	public Talents getTalent() {
		return talent;
	}
	public void setTalent(Talents talent) {
		this.talent = talent;
	}
	public Integer getHrPlanId() {
		return hrPlanId;
	}
	public void setHrPlanId(Integer hrPlanId) {
		this.hrPlanId = hrPlanId;
	}
	public Plan getPlan() {
		return plan;
	}
	public void setPlan(Plan plan) {
		this.plan = plan;
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
	public Integer getHrScreenScreening() {
		return hrScreenScreening;
	}
	public void setHrScreenScreening(Integer hrScreenScreening) {
		this.hrScreenScreening = hrScreenScreening;
	}
	public String getHrScreenWay() {
		return hrScreenWay;
	}
	public void setHrScreenWay(String hrScreenWay) {
		this.hrScreenWay = hrScreenWay;
	}
	public String getHrScreenContent() {
		return hrScreenContent;
	}
	public void setHrScreenContent(String hrScreenContent) {
		this.hrScreenContent = hrScreenContent;
	}
	public String getHrScreenOpinion() {
		return hrScreenOpinion;
	}
	public void setHrScreenOpinion(String hrScreenOpinion) {
		this.hrScreenOpinion = hrScreenOpinion;
	}
	public Date getHrScreenInterview() {
		return hrScreenInterview;
	}
	public void setHrScreenInterview(Date hrScreenInterview) {
		this.hrScreenInterview = hrScreenInterview;
	}
	public String getHrScreenWhether() {
		return hrScreenWhether;
	}
	public void setHrScreenWhether(String hrScreenWhether) {
		this.hrScreenWhether = hrScreenWhether;
	}
	public String getHrScreenUsername() {
		return hrScreenUsername;
	}
	public void setHrScreenUsername(String hrScreenUsername) {
		this.hrScreenUsername = hrScreenUsername;
	}
	public Date getHrScreenCurrenttime() {
		return hrScreenCurrenttime;
	}
	public void setHrScreenCurrenttime(Date hrScreenCurrenttime) {
		this.hrScreenCurrenttime = hrScreenCurrenttime;
	}
	public Screen(Integer hrScreenId, Integer hrTalentsId, Talents talent, Integer hrPlanId, Plan plan, Integer id,
			TbAdmin admin, Integer hrScreenScreening, String hrScreenWay, String hrScreenContent,
			String hrScreenOpinion, Date hrScreenInterview, String hrScreenWhether, String hrScreenUsername,
			Date hrScreenCurrenttime) {
		super();
		this.hrScreenId = hrScreenId;
		this.hrTalentsId = hrTalentsId;
		this.talent = talent;
		this.hrPlanId = hrPlanId;
		this.plan = plan;
		this.id = id;
		this.admin = admin;
		this.hrScreenScreening = hrScreenScreening;
		this.hrScreenWay = hrScreenWay;
		this.hrScreenContent = hrScreenContent;
		this.hrScreenOpinion = hrScreenOpinion;
		this.hrScreenInterview = hrScreenInterview;
		this.hrScreenWhether = hrScreenWhether;
		this.hrScreenUsername = hrScreenUsername;
		this.hrScreenCurrenttime = hrScreenCurrenttime;
	}
	public Screen() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Screen [hrScreenId=" + hrScreenId + ", hrTalentsId=" + hrTalentsId + ", talent=" + talent
				+ ", hrPlanId=" + hrPlanId + ", plan=" + plan + ", id=" + id + ", admin=" + admin
				+ ", hrScreenScreening=" + hrScreenScreening + ", hrScreenWay=" + hrScreenWay + ", hrScreenContent="
				+ hrScreenContent + ", hrScreenOpinion=" + hrScreenOpinion + ", hrScreenInterview=" + hrScreenInterview
				+ ", hrScreenWhether=" + hrScreenWhether + ", hrScreenUsername=" + hrScreenUsername
				+ ", hrScreenCurrenttime=" + hrScreenCurrenttime + "]";
	}
    
	

}