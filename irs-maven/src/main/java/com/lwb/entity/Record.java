package com.lwb.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.irs.pojo.TbRoles;

public class Record {
    private Integer hrRecordId;

    private Integer roleId;
    private TbRoles roles;
    private Integer hrTalentsId;
    private Talents talents;
    
    private Integer deptId;
   
    private String hrRecordName;

    private String hrRecordOaname;

    private Integer hrRecordSerial;

    private Integer hrRecordJobnumber;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrRecordCreatetime;

    private String hrRecordEnglishname;

    private String hrRecordIdentity;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrRecordDateofbirth;

    private String hrRecordSex;

    private Integer hrRecordAge;

    private String hrRecordNation;

    private String hrRecordRelation;

    private String hrRecordEmail;

    private String hrRecordMarriage;

    private String hrRecordFace;

    private String hrRecordNativeplace;

    private String hrRecordHealth;

    private String hrRecordFamily;

    private String hrRecordAddress;

    private String hrRecordEmployeetype;

    private String hrRecordPost;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrRecordEntrytime;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrRecordStartingtime;

    private String hrRecordPhotograph;

    private String hrRecordSchool;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrRecordGraduate;

    private String hrRecordDegree;

    private String hrRecordMajor;

    private String hrRecordUnusual;

    private Integer hrRecordState;

    private String hrRecordRemark;

    private String hrRecordAccessory;

    private String hrRecordUsername;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrRecordCurrenttime;
    
    private Dept dept;
    
	public Integer getHrTalentsId() {
		return hrTalentsId;
	}

	public void setHrTalentsId(Integer hrTalentsId) {
		this.hrTalentsId = hrTalentsId;
	}

	public Integer getHrRecordId() {
		return hrRecordId;
	}

	public void setHrRecordId(Integer hrRecordId) {
		this.hrRecordId = hrRecordId;
	}

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public TbRoles getRoles() {
		return roles;
	}

	public void setRoles(TbRoles roles) {
		this.roles = roles;
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

	public String getHrRecordName() {
		return hrRecordName;
	}

	public void setHrRecordName(String hrRecordName) {
		this.hrRecordName = hrRecordName;
	}

	public String getHrRecordOaname() {
		return hrRecordOaname;
	}

	public void setHrRecordOaname(String hrRecordOaname) {
		this.hrRecordOaname = hrRecordOaname;
	}

	public Integer getHrRecordSerial() {
		return hrRecordSerial;
	}

	public void setHrRecordSerial(Integer hrRecordSerial) {
		this.hrRecordSerial = hrRecordSerial;
	}

	public Integer getHrRecordJobnumber() {
		return hrRecordJobnumber;
	}

	public void setHrRecordJobnumber(Integer hrRecordJobnumber) {
		this.hrRecordJobnumber = hrRecordJobnumber;
	}

	public Date getHrRecordCreatetime() {
		return hrRecordCreatetime;
	}

	public void setHrRecordCreatetime(Date hrRecordCreatetime) {
		this.hrRecordCreatetime = hrRecordCreatetime;
	}

	public String getHrRecordEnglishname() {
		return hrRecordEnglishname;
	}

	public void setHrRecordEnglishname(String hrRecordEnglishname) {
		this.hrRecordEnglishname = hrRecordEnglishname;
	}

	public String getHrRecordIdentity() {
		return hrRecordIdentity;
	}

	public void setHrRecordIdentity(String hrRecordIdentity) {
		this.hrRecordIdentity = hrRecordIdentity;
	}

	public Date getHrRecordDateofbirth() {
		return hrRecordDateofbirth;
	}

	public void setHrRecordDateofbirth(Date hrRecordDateofbirth) {
		this.hrRecordDateofbirth = hrRecordDateofbirth;
	}

	public String getHrRecordSex() {
		return hrRecordSex;
	}

	public void setHrRecordSex(String hrRecordSex) {
		this.hrRecordSex = hrRecordSex;
	}

	public Integer getHrRecordAge() {
		return hrRecordAge;
	}

	public void setHrRecordAge(Integer hrRecordAge) {
		this.hrRecordAge = hrRecordAge;
	}

	public String getHrRecordNation() {
		return hrRecordNation;
	}

	public void setHrRecordNation(String hrRecordNation) {
		this.hrRecordNation = hrRecordNation;
	}

	public String getHrRecordRelation() {
		return hrRecordRelation;
	}

	public void setHrRecordRelation(String hrRecordRelation) {
		this.hrRecordRelation = hrRecordRelation;
	}

	public String getHrRecordEmail() {
		return hrRecordEmail;
	}

	public void setHrRecordEmail(String hrRecordEmail) {
		this.hrRecordEmail = hrRecordEmail;
	}

	public String getHrRecordMarriage() {
		return hrRecordMarriage;
	}

	public void setHrRecordMarriage(String hrRecordMarriage) {
		this.hrRecordMarriage = hrRecordMarriage;
	}

	public String getHrRecordFace() {
		return hrRecordFace;
	}

	public void setHrRecordFace(String hrRecordFace) {
		this.hrRecordFace = hrRecordFace;
	}

	public String getHrRecordNativeplace() {
		return hrRecordNativeplace;
	}

	public void setHrRecordNativeplace(String hrRecordNativeplace) {
		this.hrRecordNativeplace = hrRecordNativeplace;
	}

	public String getHrRecordHealth() {
		return hrRecordHealth;
	}

	public void setHrRecordHealth(String hrRecordHealth) {
		this.hrRecordHealth = hrRecordHealth;
	}

	public String getHrRecordFamily() {
		return hrRecordFamily;
	}

	public void setHrRecordFamily(String hrRecordFamily) {
		this.hrRecordFamily = hrRecordFamily;
	}

	public String getHrRecordAddress() {
		return hrRecordAddress;
	}

	public void setHrRecordAddress(String hrRecordAddress) {
		this.hrRecordAddress = hrRecordAddress;
	}

	public String getHrRecordEmployeetype() {
		return hrRecordEmployeetype;
	}

	public void setHrRecordEmployeetype(String hrRecordEmployeetype) {
		this.hrRecordEmployeetype = hrRecordEmployeetype;
	}

	public String getHrRecordPost() {
		return hrRecordPost;
	}

	public void setHrRecordPost(String hrRecordPost) {
		this.hrRecordPost = hrRecordPost;
	}

	public Date getHrRecordEntrytime() {
		return hrRecordEntrytime;
	}

	public void setHrRecordEntrytime(Date hrRecordEntrytime) {
		this.hrRecordEntrytime = hrRecordEntrytime;
	}

	public Date getHrRecordStartingtime() {
		return hrRecordStartingtime;
	}

	public void setHrRecordStartingtime(Date hrRecordStartingtime) {
		this.hrRecordStartingtime = hrRecordStartingtime;
	}

	public String getHrRecordPhotograph() {
		return hrRecordPhotograph;
	}

	public void setHrRecordPhotograph(String hrRecordPhotograph) {
		this.hrRecordPhotograph = hrRecordPhotograph;
	}

	public String getHrRecordSchool() {
		return hrRecordSchool;
	}

	public void setHrRecordSchool(String hrRecordSchool) {
		this.hrRecordSchool = hrRecordSchool;
	}

	public Date getHrRecordGraduate() {
		return hrRecordGraduate;
	}

	public void setHrRecordGraduate(Date hrRecordGraduate) {
		this.hrRecordGraduate = hrRecordGraduate;
	}

	public String getHrRecordDegree() {
		return hrRecordDegree;
	}

	public void setHrRecordDegree(String hrRecordDegree) {
		this.hrRecordDegree = hrRecordDegree;
	}

	public String getHrRecordMajor() {
		return hrRecordMajor;
	}

	public void setHrRecordMajor(String hrRecordMajor) {
		this.hrRecordMajor = hrRecordMajor;
	}

	public String getHrRecordUnusual() {
		return hrRecordUnusual;
	}

	public void setHrRecordUnusual(String hrRecordUnusual) {
		this.hrRecordUnusual = hrRecordUnusual;
	}

	public Integer getHrRecordState() {
		return hrRecordState;
	}

	public void setHrRecordState(Integer hrRecordState) {
		this.hrRecordState = hrRecordState;
	}

	public String getHrRecordRemark() {
		return hrRecordRemark;
	}

	public void setHrRecordRemark(String hrRecordRemark) {
		this.hrRecordRemark = hrRecordRemark;
	}

	public String getHrRecordAccessory() {
		return hrRecordAccessory;
	}

	public void setHrRecordAccessory(String hrRecordAccessory) {
		this.hrRecordAccessory = hrRecordAccessory;
	}

	public String getHrRecordUsername() {
		return hrRecordUsername;
	}

	public void setHrRecordUsername(String hrRecordUsername) {
		this.hrRecordUsername = hrRecordUsername;
	}

	public Date getHrRecordCurrenttime() {
		return hrRecordCurrenttime;
	}

	public void setHrRecordCurrenttime(Date hrRecordCurrenttime) {
		this.hrRecordCurrenttime = hrRecordCurrenttime;
	}

	public Record(Integer hrRecordId, Integer roleId, TbRoles roles, Integer hrTalentsId, Talents talents,
			Integer deptId, String hrRecordName, String hrRecordOaname, Integer hrRecordSerial,
			Integer hrRecordJobnumber, Date hrRecordCreatetime, String hrRecordEnglishname, String hrRecordIdentity,
			Date hrRecordDateofbirth, String hrRecordSex, Integer hrRecordAge, String hrRecordNation,
			String hrRecordRelation, String hrRecordEmail, String hrRecordMarriage, String hrRecordFace,
			String hrRecordNativeplace, String hrRecordHealth, String hrRecordFamily, String hrRecordAddress,
			String hrRecordEmployeetype, String hrRecordPost, Date hrRecordEntrytime, Date hrRecordStartingtime,
			String hrRecordPhotograph, String hrRecordSchool, Date hrRecordGraduate, String hrRecordDegree,
			String hrRecordMajor, String hrRecordUnusual, Integer hrRecordState, String hrRecordRemark,
			String hrRecordAccessory, String hrRecordUsername, Date hrRecordCurrenttime, Dept dept) {
		super();
		this.hrRecordId = hrRecordId;
		this.roleId = roleId;
		this.roles = roles;
		this.hrTalentsId = hrTalentsId;
		this.talents = talents;
		this.deptId = deptId;
		this.hrRecordName = hrRecordName;
		this.hrRecordOaname = hrRecordOaname;
		this.hrRecordSerial = hrRecordSerial;
		this.hrRecordJobnumber = hrRecordJobnumber;
		this.hrRecordCreatetime = hrRecordCreatetime;
		this.hrRecordEnglishname = hrRecordEnglishname;
		this.hrRecordIdentity = hrRecordIdentity;
		this.hrRecordDateofbirth = hrRecordDateofbirth;
		this.hrRecordSex = hrRecordSex;
		this.hrRecordAge = hrRecordAge;
		this.hrRecordNation = hrRecordNation;
		this.hrRecordRelation = hrRecordRelation;
		this.hrRecordEmail = hrRecordEmail;
		this.hrRecordMarriage = hrRecordMarriage;
		this.hrRecordFace = hrRecordFace;
		this.hrRecordNativeplace = hrRecordNativeplace;
		this.hrRecordHealth = hrRecordHealth;
		this.hrRecordFamily = hrRecordFamily;
		this.hrRecordAddress = hrRecordAddress;
		this.hrRecordEmployeetype = hrRecordEmployeetype;
		this.hrRecordPost = hrRecordPost;
		this.hrRecordEntrytime = hrRecordEntrytime;
		this.hrRecordStartingtime = hrRecordStartingtime;
		this.hrRecordPhotograph = hrRecordPhotograph;
		this.hrRecordSchool = hrRecordSchool;
		this.hrRecordGraduate = hrRecordGraduate;
		this.hrRecordDegree = hrRecordDegree;
		this.hrRecordMajor = hrRecordMajor;
		this.hrRecordUnusual = hrRecordUnusual;
		this.hrRecordState = hrRecordState;
		this.hrRecordRemark = hrRecordRemark;
		this.hrRecordAccessory = hrRecordAccessory;
		this.hrRecordUsername = hrRecordUsername;
		this.hrRecordCurrenttime = hrRecordCurrenttime;
		this.dept = dept;
	}

	public Record() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Record [hrRecordId=" + hrRecordId + ", roleId=" + roleId + ", roles=" + roles + ", hrTalentsId="
				+ hrTalentsId + ", talents=" + talents + ", deptId=" + deptId + ", hrRecordName=" + hrRecordName
				+ ", hrRecordOaname=" + hrRecordOaname + ", hrRecordSerial=" + hrRecordSerial + ", hrRecordJobnumber="
				+ hrRecordJobnumber + ", hrRecordCreatetime=" + hrRecordCreatetime + ", hrRecordEnglishname="
				+ hrRecordEnglishname + ", hrRecordIdentity=" + hrRecordIdentity + ", hrRecordDateofbirth="
				+ hrRecordDateofbirth + ", hrRecordSex=" + hrRecordSex + ", hrRecordAge=" + hrRecordAge
				+ ", hrRecordNation=" + hrRecordNation + ", hrRecordRelation=" + hrRecordRelation + ", hrRecordEmail="
				+ hrRecordEmail + ", hrRecordMarriage=" + hrRecordMarriage + ", hrRecordFace=" + hrRecordFace
				+ ", hrRecordNativeplace=" + hrRecordNativeplace + ", hrRecordHealth=" + hrRecordHealth
				+ ", hrRecordFamily=" + hrRecordFamily + ", hrRecordAddress=" + hrRecordAddress
				+ ", hrRecordEmployeetype=" + hrRecordEmployeetype + ", hrRecordPost=" + hrRecordPost
				+ ", hrRecordEntrytime=" + hrRecordEntrytime + ", hrRecordStartingtime=" + hrRecordStartingtime
				+ ", hrRecordPhotograph=" + hrRecordPhotograph + ", hrRecordSchool=" + hrRecordSchool
				+ ", hrRecordGraduate=" + hrRecordGraduate + ", hrRecordDegree=" + hrRecordDegree + ", hrRecordMajor="
				+ hrRecordMajor + ", hrRecordUnusual=" + hrRecordUnusual + ", hrRecordState=" + hrRecordState
				+ ", hrRecordRemark=" + hrRecordRemark + ", hrRecordAccessory=" + hrRecordAccessory
				+ ", hrRecordUsername=" + hrRecordUsername + ", hrRecordCurrenttime=" + hrRecordCurrenttime + ", dept="
				+ dept + "]";
	}



	
    
}