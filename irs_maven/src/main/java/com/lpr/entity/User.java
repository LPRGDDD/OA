package com.lpr.entity;

import java.util.Date;

public class User {
	/**
	 * 用户表
	 */
    private Integer userId;//用户ID

    private String userName;//用户名称

    private String userRealname;//用户真实名

    private String userIndex;//用户姓名索引

    private String userLoginname;//登录名

    private String userUserpsw;//用户密码

    private String userRoleBm;//角色排序号

    private String userRoleName;//角色名称

    private String userFzbm;//辅助部门

    private String userLzbm;//离职部门

    private String userSex;//性别

    private Date userBirthday;//生日

    private String userWorkphone;//工作电话

    private String userWorkfax;//工作传真

    private String userJtaddress;//家庭住址

    private String userJtpostcode;//家庭邮编

    private String userHometel;//家庭电话

    private String userPhone;//手机号

    private String userEmailaddress;//电子邮件地址

    private String userQqnumber;//QQ号码

    private String userRemark;//备注
    /*部门表*/
    private Dept dept;
    /*用户角色表*/
    private UserRole userrole;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserRealname() {
        return userRealname;
    }

    public void setUserRealname(String userRealname) {
        this.userRealname = userRealname == null ? null : userRealname.trim();
    }

    public String getUserIndex() {
        return userIndex;
    }

    public void setUserIndex(String userIndex) {
        this.userIndex = userIndex == null ? null : userIndex.trim();
    }

    public String getUserLoginname() {
        return userLoginname;
    }

    public void setUserLoginname(String userLoginname) {
        this.userLoginname = userLoginname == null ? null : userLoginname.trim();
    }

    public String getUserUserpsw() {
        return userUserpsw;
    }

    public void setUserUserpsw(String userUserpsw) {
        this.userUserpsw = userUserpsw == null ? null : userUserpsw.trim();
    }

    public String getUserRoleBm() {
        return userRoleBm;
    }

    public void setUserRoleBm(String userRoleBm) {
        this.userRoleBm = userRoleBm == null ? null : userRoleBm.trim();
    }

    public String getUserRoleName() {
        return userRoleName;
    }

    public void setUserRoleName(String userRoleName) {
        this.userRoleName = userRoleName == null ? null : userRoleName.trim();
    }

    public String getUserFzbm() {
        return userFzbm;
    }

    public void setUserFzbm(String userFzbm) {
        this.userFzbm = userFzbm == null ? null : userFzbm.trim();
    }

    public String getUserLzbm() {
        return userLzbm;
    }

    public void setUserLzbm(String userLzbm) {
        this.userLzbm = userLzbm == null ? null : userLzbm.trim();
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex == null ? null : userSex.trim();
    }

    public Date getUserBirthday() {
        return userBirthday;
    }

    public void setUserBirthday(Date userBirthday) {
        this.userBirthday = userBirthday;
    }

    public String getUserWorkphone() {
        return userWorkphone;
    }

    public void setUserWorkphone(String userWorkphone) {
        this.userWorkphone = userWorkphone == null ? null : userWorkphone.trim();
    }

    public String getUserWorkfax() {
        return userWorkfax;
    }

    public void setUserWorkfax(String userWorkfax) {
        this.userWorkfax = userWorkfax == null ? null : userWorkfax.trim();
    }

    public String getUserJtaddress() {
        return userJtaddress;
    }

    public void setUserJtaddress(String userJtaddress) {
        this.userJtaddress = userJtaddress == null ? null : userJtaddress.trim();
    }

    public String getUserJtpostcode() {
        return userJtpostcode;
    }

    public void setUserJtpostcode(String userJtpostcode) {
        this.userJtpostcode = userJtpostcode == null ? null : userJtpostcode.trim();
    }

    public String getUserHometel() {
        return userHometel;
    }

    public void setUserHometel(String userHometel) {
        this.userHometel = userHometel == null ? null : userHometel.trim();
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    public String getUserEmailaddress() {
        return userEmailaddress;
    }

    public void setUserEmailaddress(String userEmailaddress) {
        this.userEmailaddress = userEmailaddress == null ? null : userEmailaddress.trim();
    }

    public String getUserQqnumber() {
        return userQqnumber;
    }

    public void setUserQqnumber(String userQqnumber) {
        this.userQqnumber = userQqnumber == null ? null : userQqnumber.trim();
    }

    public String getUserRemark() {
        return userRemark;
    }

    public void setUserRemark(String userRemark) {
        this.userRemark = userRemark == null ? null : userRemark.trim();
    }

	public Dept getDept() {
		return dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public UserRole getUserrole() {
		return userrole;
	}

	public void setUserrole(UserRole userrole) {
		this.userrole = userrole;
	}
}