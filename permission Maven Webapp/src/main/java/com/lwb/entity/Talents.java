package com.lwb.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Talents {
    private Integer hrTalentsId;

    private Integer hrPlanId;
    private Plan plan;
    
    private String hrTalentsName;
    private String hrTalentsIdentity;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrTalentsBirth;

    private String hrTalentsSex;

    private Integer hrTalentsAge;

    private String hrTalentsNative;

    private String hrTalentsPlace;

    private String hrTalentsNation;

    private String hrTalentsState;

    private String hrTalentsFace;

    private String hrTalentsRelation;

    private String hrTalentsMall;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrTalentsWorkdate;

    private String hrTalentsHealth;

    private String hrTalentsBackground;

    private String hrTalentsDegree;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrTalentsGraduate;

    private String hrTalentsSchool;

    private String hrTalentsMajor;

    private String hrTalentsComputer;

    private String hrTalentsForeign;

    private String hrTalentsLevel;

    private String hrTalentsStrong;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrTalentsRegister;

    private String hrTalentsExpect;

    private String hrTalentsSkill;

    private String hrTalentsWorkexperience;

    private String hrTalentsProjectexperience;

    private String hrTalentsDwell;

    private String hrTalentsNature;

    private String hrTalentsIndustry;

    private String hrTalentsPay;

    private Integer hrTalentsPositiondate;

    private String hrTalentsPicture;

    private String hrTalentsRemark;

    private String hrTalentsAccessory;

    private Integer hrTalentsFilestatus;

    private String hrTalentsUsername;
    
    private String hrTalentsToemploy;

	public Integer getHrTalentsId() {
		return hrTalentsId;
	}

	public void setHrTalentsId(Integer hrTalentsId) {
		this.hrTalentsId = hrTalentsId;
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

	public String getHrTalentsName() {
		return hrTalentsName;
	}

	public void setHrTalentsName(String hrTalentsName) {
		this.hrTalentsName = hrTalentsName;
	}

	public Date getHrTalentsBirth() {
		return hrTalentsBirth;
	}

	public void setHrTalentsBirth(Date hrTalentsBirth) {
		this.hrTalentsBirth = hrTalentsBirth;
	}

	public String getHrTalentsSex() {
		return hrTalentsSex;
	}

	public void setHrTalentsSex(String hrTalentsSex) {
		this.hrTalentsSex = hrTalentsSex;
	}

	public Integer getHrTalentsAge() {
		return hrTalentsAge;
	}

	public void setHrTalentsAge(Integer hrTalentsAge) {
		this.hrTalentsAge = hrTalentsAge;
	}

	public String getHrTalentsNative() {
		return hrTalentsNative;
	}

	public void setHrTalentsNative(String hrTalentsNative) {
		this.hrTalentsNative = hrTalentsNative;
	}

	public String getHrTalentsPlace() {
		return hrTalentsPlace;
	}

	public void setHrTalentsPlace(String hrTalentsPlace) {
		this.hrTalentsPlace = hrTalentsPlace;
	}

	public String getHrTalentsNation() {
		return hrTalentsNation;
	}

	public void setHrTalentsNation(String hrTalentsNation) {
		this.hrTalentsNation = hrTalentsNation;
	}

	public String getHrTalentsState() {
		return hrTalentsState;
	}

	public void setHrTalentsState(String hrTalentsState) {
		this.hrTalentsState = hrTalentsState;
	}

	public String getHrTalentsFace() {
		return hrTalentsFace;
	}

	public void setHrTalentsFace(String hrTalentsFace) {
		this.hrTalentsFace = hrTalentsFace;
	}

	public String getHrTalentsRelation() {
		return hrTalentsRelation;
	}

	public void setHrTalentsRelation(String hrTalentsRelation) {
		this.hrTalentsRelation = hrTalentsRelation;
	}

	public String getHrTalentsMall() {
		return hrTalentsMall;
	}

	public void setHrTalentsMall(String hrTalentsMall) {
		this.hrTalentsMall = hrTalentsMall;
	}

	public Date getHrTalentsWorkdate() {
		return hrTalentsWorkdate;
	}

	public void setHrTalentsWorkdate(Date hrTalentsWorkdate) {
		this.hrTalentsWorkdate = hrTalentsWorkdate;
	}

	public String getHrTalentsHealth() {
		return hrTalentsHealth;
	}

	public void setHrTalentsHealth(String hrTalentsHealth) {
		this.hrTalentsHealth = hrTalentsHealth;
	}

	public String getHrTalentsBackground() {
		return hrTalentsBackground;
	}

	public void setHrTalentsBackground(String hrTalentsBackground) {
		this.hrTalentsBackground = hrTalentsBackground;
	}

	public String getHrTalentsDegree() {
		return hrTalentsDegree;
	}

	public void setHrTalentsDegree(String hrTalentsDegree) {
		this.hrTalentsDegree = hrTalentsDegree;
	}

	public Date getHrTalentsGraduate() {
		return hrTalentsGraduate;
	}

	public void setHrTalentsGraduate(Date hrTalentsGraduate) {
		this.hrTalentsGraduate = hrTalentsGraduate;
	}

	public String getHrTalentsSchool() {
		return hrTalentsSchool;
	}

	public void setHrTalentsSchool(String hrTalentsSchool) {
		this.hrTalentsSchool = hrTalentsSchool;
	}

	public String getHrTalentsMajor() {
		return hrTalentsMajor;
	}

	public void setHrTalentsMajor(String hrTalentsMajor) {
		this.hrTalentsMajor = hrTalentsMajor;
	}

	public String getHrTalentsComputer() {
		return hrTalentsComputer;
	}

	public void setHrTalentsComputer(String hrTalentsComputer) {
		this.hrTalentsComputer = hrTalentsComputer;
	}

	public String getHrTalentsForeign() {
		return hrTalentsForeign;
	}

	public void setHrTalentsForeign(String hrTalentsForeign) {
		this.hrTalentsForeign = hrTalentsForeign;
	}

	public String getHrTalentsLevel() {
		return hrTalentsLevel;
	}

	public void setHrTalentsLevel(String hrTalentsLevel) {
		this.hrTalentsLevel = hrTalentsLevel;
	}

	public String getHrTalentsStrong() {
		return hrTalentsStrong;
	}

	public void setHrTalentsStrong(String hrTalentsStrong) {
		this.hrTalentsStrong = hrTalentsStrong;
	}

	public Date getHrTalentsRegister() {
		return hrTalentsRegister;
	}

	public void setHrTalentsRegister(Date hrTalentsRegister) {
		this.hrTalentsRegister = hrTalentsRegister;
	}

	public String getHrTalentsExpect() {
		return hrTalentsExpect;
	}

	public void setHrTalentsExpect(String hrTalentsExpect) {
		this.hrTalentsExpect = hrTalentsExpect;
	}

	public String getHrTalentsSkill() {
		return hrTalentsSkill;
	}

	public void setHrTalentsSkill(String hrTalentsSkill) {
		this.hrTalentsSkill = hrTalentsSkill;
	}

	public String getHrTalentsWorkexperience() {
		return hrTalentsWorkexperience;
	}

	public void setHrTalentsWorkexperience(String hrTalentsWorkexperience) {
		this.hrTalentsWorkexperience = hrTalentsWorkexperience;
	}

	public String getHrTalentsProjectexperience() {
		return hrTalentsProjectexperience;
	}

	public void setHrTalentsProjectexperience(String hrTalentsProjectexperience) {
		this.hrTalentsProjectexperience = hrTalentsProjectexperience;
	}

	public String getHrTalentsDwell() {
		return hrTalentsDwell;
	}

	public void setHrTalentsDwell(String hrTalentsDwell) {
		this.hrTalentsDwell = hrTalentsDwell;
	}

	public String getHrTalentsNature() {
		return hrTalentsNature;
	}

	public void setHrTalentsNature(String hrTalentsNature) {
		this.hrTalentsNature = hrTalentsNature;
	}

	public String getHrTalentsIndustry() {
		return hrTalentsIndustry;
	}

	public void setHrTalentsIndustry(String hrTalentsIndustry) {
		this.hrTalentsIndustry = hrTalentsIndustry;
	}

	public String getHrTalentsPay() {
		return hrTalentsPay;
	}

	public void setHrTalentsPay(String hrTalentsPay) {
		this.hrTalentsPay = hrTalentsPay;
	}

	public Integer getHrTalentsPositiondate() {
		return hrTalentsPositiondate;
	}

	public void setHrTalentsPositiondate(Integer hrTalentsPositiondate) {
		this.hrTalentsPositiondate = hrTalentsPositiondate;
	}

	public String getHrTalentsPicture() {
		return hrTalentsPicture;
	}

	public void setHrTalentsPicture(String hrTalentsPicture) {
		this.hrTalentsPicture = hrTalentsPicture;
	}

	public String getHrTalentsRemark() {
		return hrTalentsRemark;
	}

	public void setHrTalentsRemark(String hrTalentsRemark) {
		this.hrTalentsRemark = hrTalentsRemark;
	}

	public String getHrTalentsAccessory() {
		return hrTalentsAccessory;
	}

	public void setHrTalentsAccessory(String hrTalentsAccessory) {
		this.hrTalentsAccessory = hrTalentsAccessory;
	}

	public Integer getHrTalentsFilestatus() {
		return hrTalentsFilestatus;
	}

	public void setHrTalentsFilestatus(Integer hrTalentsFilestatus) {
		this.hrTalentsFilestatus = hrTalentsFilestatus;
	}

	public String getHrTalentsUsername() {
		return hrTalentsUsername;
	}

	public void setHrTalentsUsername(String hrTalentsUsername) {
		this.hrTalentsUsername = hrTalentsUsername;
	}

	public String getHrTalentsToemploy() {
		return hrTalentsToemploy;
	}

	public void setHrTalentsToemploy(String hrTalentsToemploy) {
		this.hrTalentsToemploy = hrTalentsToemploy;
	}

	public String getHrTalentsIdentity() {
		return hrTalentsIdentity;
	}

	public void setHrTalentsIdentity(String hrTalentsIdentity) {
		this.hrTalentsIdentity = hrTalentsIdentity;
	}

	public Talents(Integer hrTalentsId, Integer hrPlanId, Plan plan, String hrTalentsName, String hrTalentsIdentity,
			Date hrTalentsBirth, String hrTalentsSex, Integer hrTalentsAge, String hrTalentsNative,
			String hrTalentsPlace, String hrTalentsNation, String hrTalentsState, String hrTalentsFace,
			String hrTalentsRelation, String hrTalentsMall, Date hrTalentsWorkdate, String hrTalentsHealth,
			String hrTalentsBackground, String hrTalentsDegree, Date hrTalentsGraduate, String hrTalentsSchool,
			String hrTalentsMajor, String hrTalentsComputer, String hrTalentsForeign, String hrTalentsLevel,
			String hrTalentsStrong, Date hrTalentsRegister, String hrTalentsExpect, String hrTalentsSkill,
			String hrTalentsWorkexperience, String hrTalentsProjectexperience, String hrTalentsDwell,
			String hrTalentsNature, String hrTalentsIndustry, String hrTalentsPay, Integer hrTalentsPositiondate,
			String hrTalentsPicture, String hrTalentsRemark, String hrTalentsAccessory, Integer hrTalentsFilestatus,
			String hrTalentsUsername, String hrTalentsToemploy) {
		super();
		this.hrTalentsId = hrTalentsId;
		this.hrPlanId = hrPlanId;
		this.plan = plan;
		this.hrTalentsName = hrTalentsName;
		this.hrTalentsIdentity = hrTalentsIdentity;
		this.hrTalentsBirth = hrTalentsBirth;
		this.hrTalentsSex = hrTalentsSex;
		this.hrTalentsAge = hrTalentsAge;
		this.hrTalentsNative = hrTalentsNative;
		this.hrTalentsPlace = hrTalentsPlace;
		this.hrTalentsNation = hrTalentsNation;
		this.hrTalentsState = hrTalentsState;
		this.hrTalentsFace = hrTalentsFace;
		this.hrTalentsRelation = hrTalentsRelation;
		this.hrTalentsMall = hrTalentsMall;
		this.hrTalentsWorkdate = hrTalentsWorkdate;
		this.hrTalentsHealth = hrTalentsHealth;
		this.hrTalentsBackground = hrTalentsBackground;
		this.hrTalentsDegree = hrTalentsDegree;
		this.hrTalentsGraduate = hrTalentsGraduate;
		this.hrTalentsSchool = hrTalentsSchool;
		this.hrTalentsMajor = hrTalentsMajor;
		this.hrTalentsComputer = hrTalentsComputer;
		this.hrTalentsForeign = hrTalentsForeign;
		this.hrTalentsLevel = hrTalentsLevel;
		this.hrTalentsStrong = hrTalentsStrong;
		this.hrTalentsRegister = hrTalentsRegister;
		this.hrTalentsExpect = hrTalentsExpect;
		this.hrTalentsSkill = hrTalentsSkill;
		this.hrTalentsWorkexperience = hrTalentsWorkexperience;
		this.hrTalentsProjectexperience = hrTalentsProjectexperience;
		this.hrTalentsDwell = hrTalentsDwell;
		this.hrTalentsNature = hrTalentsNature;
		this.hrTalentsIndustry = hrTalentsIndustry;
		this.hrTalentsPay = hrTalentsPay;
		this.hrTalentsPositiondate = hrTalentsPositiondate;
		this.hrTalentsPicture = hrTalentsPicture;
		this.hrTalentsRemark = hrTalentsRemark;
		this.hrTalentsAccessory = hrTalentsAccessory;
		this.hrTalentsFilestatus = hrTalentsFilestatus;
		this.hrTalentsUsername = hrTalentsUsername;
		this.hrTalentsToemploy = hrTalentsToemploy;
	}

	public Talents() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Talents [hrTalentsId=" + hrTalentsId + ", hrPlanId=" + hrPlanId + ", plan=" + plan + ", hrTalentsName="
				+ hrTalentsName + ", hrTalentsIdentity=" + hrTalentsIdentity + ", hrTalentsBirth=" + hrTalentsBirth
				+ ", hrTalentsSex=" + hrTalentsSex + ", hrTalentsAge=" + hrTalentsAge + ", hrTalentsNative="
				+ hrTalentsNative + ", hrTalentsPlace=" + hrTalentsPlace + ", hrTalentsNation=" + hrTalentsNation
				+ ", hrTalentsState=" + hrTalentsState + ", hrTalentsFace=" + hrTalentsFace + ", hrTalentsRelation="
				+ hrTalentsRelation + ", hrTalentsMall=" + hrTalentsMall + ", hrTalentsWorkdate=" + hrTalentsWorkdate
				+ ", hrTalentsHealth=" + hrTalentsHealth + ", hrTalentsBackground=" + hrTalentsBackground
				+ ", hrTalentsDegree=" + hrTalentsDegree + ", hrTalentsGraduate=" + hrTalentsGraduate
				+ ", hrTalentsSchool=" + hrTalentsSchool + ", hrTalentsMajor=" + hrTalentsMajor + ", hrTalentsComputer="
				+ hrTalentsComputer + ", hrTalentsForeign=" + hrTalentsForeign + ", hrTalentsLevel=" + hrTalentsLevel
				+ ", hrTalentsStrong=" + hrTalentsStrong + ", hrTalentsRegister=" + hrTalentsRegister
				+ ", hrTalentsExpect=" + hrTalentsExpect + ", hrTalentsSkill=" + hrTalentsSkill
				+ ", hrTalentsWorkexperience=" + hrTalentsWorkexperience + ", hrTalentsProjectexperience="
				+ hrTalentsProjectexperience + ", hrTalentsDwell=" + hrTalentsDwell + ", hrTalentsNature="
				+ hrTalentsNature + ", hrTalentsIndustry=" + hrTalentsIndustry + ", hrTalentsPay=" + hrTalentsPay
				+ ", hrTalentsPositiondate=" + hrTalentsPositiondate + ", hrTalentsPicture=" + hrTalentsPicture
				+ ", hrTalentsRemark=" + hrTalentsRemark + ", hrTalentsAccessory=" + hrTalentsAccessory
				+ ", hrTalentsFilestatus=" + hrTalentsFilestatus + ", hrTalentsUsername=" + hrTalentsUsername
				+ ", hrTalentsToemploy=" + hrTalentsToemploy + "]";
	}
 
}