package com.lpr.entity;

public class SalaDataAndAdmin {
	private Long id;

    private String username;

    private String password;

    private String salt;

    private String fullname;

    private String eMail;

    private String sex;

    private String birthday;

    private String address;

    private String phone;

    private Long roleId;
    
    private String roleName;

    private Integer personxc_id;
    private Integer dept_id;
    private Double personxc_s1;//薪酬项目1

    private Double personxc_s2;//薪酬项目2

    private Double personxc_s3;//薪酬项目3

    private Double personxc_s4;//薪酬项目4

    private Double personxc_s5;//薪酬项目5

    private Double personxc_s6;//薪酬项目6

    private Double personxc_s7;//薪酬项目7

    private Double personxc_s8;//薪酬项目8

    private Double personxc_s9;//薪酬项目9

    private Double personxc_s10;//薪酬项目10

    private Double personxc_insurejs;//员工保险基数

    private Double personxc_ylinsure;//员工养老保险

    private Double personxc_dwyl;//员工单位养老

    private Double personxc_gryl;//员工个人养老

    private Double personxc_ylbx;//员工医疗保险

    private Double personxc_dw_medical;//员工单位医疗

    private Double personxc_grmedical;//员工个人医疗

    private Double personxc_group;//员工生育保险

    private Double personxc_dwsy;//员工单位生育

    private Double personxc_sybx;//员工失业保险

    private Double personxc_dwshiye;//员工单位失业

    private Double personxc_grsy;//员工个人失业

    private Double personxc_gsbx;//员工工伤保险

    private Double personxc_dwgs;//员工单位工伤

    private Double personxc_housingfund;//员工住房公积金

    private Double personxc_dwzf;//员工单位住房

    private Double personxc_grzf;//员工个人住房

    private String personxc_expression;//员工表现
    
    private Double salSsalary;//应发工资
    
    private Integer salaryflowId;//流程表ID

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Integer getPersonxc_id() {
		return personxc_id;
	}

	public void setPersonxc_id(Integer personxc_id) {
		this.personxc_id = personxc_id;
	}

	public Integer getDept_id() {
		return dept_id;
	}

	public void setDept_id(Integer dept_id) {
		this.dept_id = dept_id;
	}

	public Double getPersonxc_s1() {
		return personxc_s1;
	}

	public void setPersonxc_s1(Double personxc_s1) {
		this.personxc_s1 = personxc_s1;
	}

	public Double getPersonxc_s2() {
		return personxc_s2;
	}

	public void setPersonxc_s2(Double personxc_s2) {
		this.personxc_s2 = personxc_s2;
	}

	public Double getPersonxc_s3() {
		return personxc_s3;
	}

	public void setPersonxc_s3(Double personxc_s3) {
		this.personxc_s3 = personxc_s3;
	}

	public Double getPersonxc_s4() {
		return personxc_s4;
	}

	public void setPersonxc_s4(Double personxc_s4) {
		this.personxc_s4 = personxc_s4;
	}

	public Double getPersonxc_s5() {
		return personxc_s5;
	}

	public void setPersonxc_s5(Double personxc_s5) {
		this.personxc_s5 = personxc_s5;
	}

	public Double getPersonxc_s6() {
		return personxc_s6;
	}

	public void setPersonxc_s6(Double personxc_s6) {
		this.personxc_s6 = personxc_s6;
	}

	public Double getPersonxc_s7() {
		return personxc_s7;
	}

	public void setPersonxc_s7(Double personxc_s7) {
		this.personxc_s7 = personxc_s7;
	}

	public Double getPersonxc_s8() {
		return personxc_s8;
	}

	public void setPersonxc_s8(Double personxc_s8) {
		this.personxc_s8 = personxc_s8;
	}

	public Double getPersonxc_s9() {
		return personxc_s9;
	}

	public void setPersonxc_s9(Double personxc_s9) {
		this.personxc_s9 = personxc_s9;
	}

	public Double getPersonxc_s10() {
		return personxc_s10;
	}

	public void setPersonxc_s10(Double personxc_s10) {
		this.personxc_s10 = personxc_s10;
	}

	public Double getPersonxc_insurejs() {
		return personxc_insurejs;
	}

	public void setPersonxc_insurejs(Double personxc_insurejs) {
		this.personxc_insurejs = personxc_insurejs;
	}

	public Double getPersonxc_ylinsure() {
		return personxc_ylinsure;
	}

	public void setPersonxc_ylinsure(Double personxc_ylinsure) {
		this.personxc_ylinsure = personxc_ylinsure;
	}

	public Double getPersonxc_dwyl() {
		return personxc_dwyl;
	}

	public void setPersonxc_dwyl(Double personxc_dwyl) {
		this.personxc_dwyl = personxc_dwyl;
	}

	public Double getPersonxc_gryl() {
		return personxc_gryl;
	}

	public void setPersonxc_gryl(Double personxc_gryl) {
		this.personxc_gryl = personxc_gryl;
	}

	public Double getPersonxc_ylbx() {
		return personxc_ylbx;
	}

	public void setPersonxc_ylbx(Double personxc_ylbx) {
		this.personxc_ylbx = personxc_ylbx;
	}

	public Double getPersonxc_dw_medical() {
		return personxc_dw_medical;
	}

	public void setPersonxc_dw_medical(Double personxc_dw_medical) {
		this.personxc_dw_medical = personxc_dw_medical;
	}

	public Double getPersonxc_grmedical() {
		return personxc_grmedical;
	}

	public void setPersonxc_grmedical(Double personxc_grmedical) {
		this.personxc_grmedical = personxc_grmedical;
	}

	public Double getPersonxc_group() {
		return personxc_group;
	}

	public void setPersonxc_group(Double personxc_group) {
		this.personxc_group = personxc_group;
	}

	public Double getPersonxc_dwsy() {
		return personxc_dwsy;
	}

	public void setPersonxc_dwsy(Double personxc_dwsy) {
		this.personxc_dwsy = personxc_dwsy;
	}

	public Double getPersonxc_sybx() {
		return personxc_sybx;
	}

	public void setPersonxc_sybx(Double personxc_sybx) {
		this.personxc_sybx = personxc_sybx;
	}

	public Double getPersonxc_dwshiye() {
		return personxc_dwshiye;
	}

	public void setPersonxc_dwshiye(Double personxc_dwshiye) {
		this.personxc_dwshiye = personxc_dwshiye;
	}

	public Double getPersonxc_grsy() {
		return personxc_grsy;
	}

	public void setPersonxc_grsy(Double personxc_grsy) {
		this.personxc_grsy = personxc_grsy;
	}

	public Double getPersonxc_gsbx() {
		return personxc_gsbx;
	}

	public void setPersonxc_gsbx(Double personxc_gsbx) {
		this.personxc_gsbx = personxc_gsbx;
	}

	public Double getPersonxc_dwgs() {
		return personxc_dwgs;
	}

	public void setPersonxc_dwgs(Double personxc_dwgs) {
		this.personxc_dwgs = personxc_dwgs;
	}

	public Double getPersonxc_housingfund() {
		return personxc_housingfund;
	}

	public void setPersonxc_housingfund(Double personxc_housingfund) {
		this.personxc_housingfund = personxc_housingfund;
	}

	public Double getPersonxc_dwzf() {
		return personxc_dwzf;
	}

	public void setPersonxc_dwzf(Double personxc_dwzf) {
		this.personxc_dwzf = personxc_dwzf;
	}

	public Double getPersonxc_grzf() {
		return personxc_grzf;
	}

	public void setPersonxc_grzf(Double personxc_grzf) {
		this.personxc_grzf = personxc_grzf;
	}

	public String getPersonxc_expression() {
		return personxc_expression;
	}

	public void setPersonxc_expression(String personxc_expression) {
		this.personxc_expression = personxc_expression;
	}

	public Double getSalSsalary() {
		return salSsalary;
	}

	public void setSalSsalary(Double salSsalary) {
		this.salSsalary = salSsalary;
	}

	public Integer getSalaryflowId() {
		return salaryflowId;
	}

	public void setSalaryflowId(Integer salaryflowId) {
		this.salaryflowId = salaryflowId;
	}

	
    
}
