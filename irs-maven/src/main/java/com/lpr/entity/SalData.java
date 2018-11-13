package com.lpr.entity;

import com.irs.pojo.TbAdmin;
/**
 * 工资流程中的上报数据
 */
public class SalData {
	
    private Integer salDataId;//工资流程编号

    private Double salSsalary;//应发工资

    private String salExpression;//描述
   /* 员工薪酬基数设置表*/
    private PersonXc personxc;
   /* 薪酬管理中的工资流程*/
    private SalaryFlow salaryflow;
    private Double personxcS1;//薪酬项目1

    private Double personxcS2;//薪酬项目2

    private Double personxcS3;//薪酬项目3

    private Double personxcS4;//薪酬项目4

    private Double personxcS5;//薪酬项目5

    private Double personxcS6;//薪酬项目6

    private Double personxcS7;//薪酬项目7

    private Double personxcS8;//薪酬项目8

    private Double personxcS9;//薪酬项目9

    private Double personxcS10;//薪酬项目10

    private Double personxcInsurejs;//员工保险基数

    private Double personxcYlinsure;//员工养老保险

    private Double personxcDwyl;//员工单位养老

    private Double personxcGryl;//员工个人养老

    private Double personxcYlbx;//员工医疗保险

    private Double personxcDwMedical;//员工单位医疗

    private Double personxcGrmedical;//员工个人医疗

    private Double personxcGroup;//员工生育保险

    private Double personxcDwsy;//员工单位生育

    private Double personxcSybx;//员工失业保险

    private Double personxcDwshiye;//员工单位失业

    private Double personxcGrsy;//员工个人失业

    private Double personxcGsbx;//员工工伤保险

    private Double personxcDwgs;//员工单位工伤

    private Double personxcHousingfund;//员工住房公积金

    private Double personxcDwzf;//员工单位住房

    private Double personxcGrzf;//员工个人住房

    private String personxcExpression;//员工表现
    /*用户表*/
    private TbAdmin user;
	public Integer getSalDataId() {
		return salDataId;
	}
	public void setSalDataId(Integer salDataId) {
		this.salDataId = salDataId;
	}
	public Double getSalSsalary() {
		return salSsalary;
	}
	public void setSalSsalary(Double salSsalary) {
		this.salSsalary = salSsalary;
	}
	public String getSalExpression() {
		return salExpression;
	}
	public void setSalExpression(String salExpression) {
		this.salExpression = salExpression;
	}
	public PersonXc getPersonxc() {
		return personxc;
	}
	public void setPersonxc(PersonXc personxc) {
		this.personxc = personxc;
	}
	public SalaryFlow getSalaryflow() {
		return salaryflow;
	}
	public void setSalaryflow(SalaryFlow salaryflow) {
		this.salaryflow = salaryflow;
	}
	public Double getPersonxcS1() {
		return personxcS1;
	}
	public void setPersonxcS1(Double personxcS1) {
		this.personxcS1 = personxcS1;
	}
	public Double getPersonxcS2() {
		return personxcS2;
	}
	public void setPersonxcS2(Double personxcS2) {
		this.personxcS2 = personxcS2;
	}
	public Double getPersonxcS3() {
		return personxcS3;
	}
	public void setPersonxcS3(Double personxcS3) {
		this.personxcS3 = personxcS3;
	}
	public Double getPersonxcS4() {
		return personxcS4;
	}
	public void setPersonxcS4(Double personxcS4) {
		this.personxcS4 = personxcS4;
	}
	public Double getPersonxcS5() {
		return personxcS5;
	}
	public void setPersonxcS5(Double personxcS5) {
		this.personxcS5 = personxcS5;
	}
	public Double getPersonxcS6() {
		return personxcS6;
	}
	public void setPersonxcS6(Double personxcS6) {
		this.personxcS6 = personxcS6;
	}
	public Double getPersonxcS7() {
		return personxcS7;
	}
	public void setPersonxcS7(Double personxcS7) {
		this.personxcS7 = personxcS7;
	}
	public Double getPersonxcS8() {
		return personxcS8;
	}
	public void setPersonxcS8(Double personxcS8) {
		this.personxcS8 = personxcS8;
	}
	public Double getPersonxcS9() {
		return personxcS9;
	}
	public void setPersonxcS9(Double personxcS9) {
		this.personxcS9 = personxcS9;
	}
	public Double getPersonxcS10() {
		return personxcS10;
	}
	public void setPersonxcS10(Double personxcS10) {
		this.personxcS10 = personxcS10;
	}
	public Double getPersonxcInsurejs() {
		return personxcInsurejs;
	}
	public void setPersonxcInsurejs(Double personxcInsurejs) {
		this.personxcInsurejs = personxcInsurejs;
	}
	public Double getPersonxcYlinsure() {
		return personxcYlinsure;
	}
	public void setPersonxcYlinsure(Double personxcYlinsure) {
		this.personxcYlinsure = personxcYlinsure;
	}
	public Double getPersonxcDwyl() {
		return personxcDwyl;
	}
	public void setPersonxcDwyl(Double personxcDwyl) {
		this.personxcDwyl = personxcDwyl;
	}
	public Double getPersonxcGryl() {
		return personxcGryl;
	}
	public void setPersonxcGryl(Double personxcGryl) {
		this.personxcGryl = personxcGryl;
	}
	public Double getPersonxcYlbx() {
		return personxcYlbx;
	}
	public void setPersonxcYlbx(Double personxcYlbx) {
		this.personxcYlbx = personxcYlbx;
	}
	public Double getPersonxcDwMedical() {
		return personxcDwMedical;
	}
	public void setPersonxcDwMedical(Double personxcDwMedical) {
		this.personxcDwMedical = personxcDwMedical;
	}
	public Double getPersonxcGrmedical() {
		return personxcGrmedical;
	}
	public void setPersonxcGrmedical(Double personxcGrmedical) {
		this.personxcGrmedical = personxcGrmedical;
	}
	public Double getPersonxcGroup() {
		return personxcGroup;
	}
	public void setPersonxcGroup(Double personxcGroup) {
		this.personxcGroup = personxcGroup;
	}
	public Double getPersonxcDwsy() {
		return personxcDwsy;
	}
	public void setPersonxcDwsy(Double personxcDwsy) {
		this.personxcDwsy = personxcDwsy;
	}
	public Double getPersonxcSybx() {
		return personxcSybx;
	}
	public void setPersonxcSybx(Double personxcSybx) {
		this.personxcSybx = personxcSybx;
	}
	public Double getPersonxcDwshiye() {
		return personxcDwshiye;
	}
	public void setPersonxcDwshiye(Double personxcDwshiye) {
		this.personxcDwshiye = personxcDwshiye;
	}
	public Double getPersonxcGrsy() {
		return personxcGrsy;
	}
	public void setPersonxcGrsy(Double personxcGrsy) {
		this.personxcGrsy = personxcGrsy;
	}
	public Double getPersonxcGsbx() {
		return personxcGsbx;
	}
	public void setPersonxcGsbx(Double personxcGsbx) {
		this.personxcGsbx = personxcGsbx;
	}
	public Double getPersonxcDwgs() {
		return personxcDwgs;
	}
	public void setPersonxcDwgs(Double personxcDwgs) {
		this.personxcDwgs = personxcDwgs;
	}
	public Double getPersonxcHousingfund() {
		return personxcHousingfund;
	}
	public void setPersonxcHousingfund(Double personxcHousingfund) {
		this.personxcHousingfund = personxcHousingfund;
	}
	public Double getPersonxcDwzf() {
		return personxcDwzf;
	}
	public void setPersonxcDwzf(Double personxcDwzf) {
		this.personxcDwzf = personxcDwzf;
	}
	public Double getPersonxcGrzf() {
		return personxcGrzf;
	}
	public void setPersonxcGrzf(Double personxcGrzf) {
		this.personxcGrzf = personxcGrzf;
	}
	public String getPersonxcExpression() {
		return personxcExpression;
	}
	public void setPersonxcExpression(String personxcExpression) {
		this.personxcExpression = personxcExpression;
	}
	public TbAdmin getUser() {
		return user;
	}
	public void setUser(TbAdmin user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "SalData [salDataId=" + salDataId + ", salSsalary=" + salSsalary + ", salExpression=" + salExpression
				+ ", personxc=" + personxc + ", salaryflow=" + salaryflow + ", personxcS1=" + personxcS1
				+ ", personxcS2=" + personxcS2 + ", personxcS3=" + personxcS3 + ", personxcS4=" + personxcS4
				+ ", personxcS5=" + personxcS5 + ", personxcS6=" + personxcS6 + ", personxcS7=" + personxcS7
				+ ", personxcS8=" + personxcS8 + ", personxcS9=" + personxcS9 + ", personxcS10=" + personxcS10
				+ ", personxcInsurejs=" + personxcInsurejs + ", personxcYlinsure=" + personxcYlinsure
				+ ", personxcDwyl=" + personxcDwyl + ", personxcGryl=" + personxcGryl + ", personxcYlbx=" + personxcYlbx
				+ ", personxcDwMedical=" + personxcDwMedical + ", personxcGrmedical=" + personxcGrmedical
				+ ", personxcGroup=" + personxcGroup + ", personxcDwsy=" + personxcDwsy + ", personxcSybx="
				+ personxcSybx + ", personxcDwshiye=" + personxcDwshiye + ", personxcGrsy=" + personxcGrsy
				+ ", personxcGsbx=" + personxcGsbx + ", personxcDwgs=" + personxcDwgs + ", personxcHousingfund="
				+ personxcHousingfund + ", personxcDwzf=" + personxcDwzf + ", personxcGrzf=" + personxcGrzf
				+ ", personxcExpression=" + personxcExpression + ", user=" + user + "]";
	}
	public SalData(Integer salDataId, Double salSsalary, String salExpression, PersonXc personxc, SalaryFlow salaryflow,
			Double personxcS1, Double personxcS2, Double personxcS3, Double personxcS4, Double personxcS5,
			Double personxcS6, Double personxcS7, Double personxcS8, Double personxcS9, Double personxcS10,
			Double personxcInsurejs, Double personxcYlinsure, Double personxcDwyl, Double personxcGryl,
			Double personxcYlbx, Double personxcDwMedical, Double personxcGrmedical, Double personxcGroup,
			Double personxcDwsy, Double personxcSybx, Double personxcDwshiye, Double personxcGrsy, Double personxcGsbx,
			Double personxcDwgs, Double personxcHousingfund, Double personxcDwzf, Double personxcGrzf,
			String personxcExpression, TbAdmin user) {
		super();
		this.salDataId = salDataId;
		this.salSsalary = salSsalary;
		this.salExpression = salExpression;
		this.personxc = personxc;
		this.salaryflow = salaryflow;
		this.personxcS1 = personxcS1;
		this.personxcS2 = personxcS2;
		this.personxcS3 = personxcS3;
		this.personxcS4 = personxcS4;
		this.personxcS5 = personxcS5;
		this.personxcS6 = personxcS6;
		this.personxcS7 = personxcS7;
		this.personxcS8 = personxcS8;
		this.personxcS9 = personxcS9;
		this.personxcS10 = personxcS10;
		this.personxcInsurejs = personxcInsurejs;
		this.personxcYlinsure = personxcYlinsure;
		this.personxcDwyl = personxcDwyl;
		this.personxcGryl = personxcGryl;
		this.personxcYlbx = personxcYlbx;
		this.personxcDwMedical = personxcDwMedical;
		this.personxcGrmedical = personxcGrmedical;
		this.personxcGroup = personxcGroup;
		this.personxcDwsy = personxcDwsy;
		this.personxcSybx = personxcSybx;
		this.personxcDwshiye = personxcDwshiye;
		this.personxcGrsy = personxcGrsy;
		this.personxcGsbx = personxcGsbx;
		this.personxcDwgs = personxcDwgs;
		this.personxcHousingfund = personxcHousingfund;
		this.personxcDwzf = personxcDwzf;
		this.personxcGrzf = personxcGrzf;
		this.personxcExpression = personxcExpression;
		this.user = user;
	}
	public SalData() {
		super();
		// TODO Auto-generated constructor stub
	}

   
}