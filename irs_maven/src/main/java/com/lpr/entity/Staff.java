package com.lpr.entity;

import java.util.Date;

public class Staff {
	/**
	 * ��Ա��
	 */
    private Integer staffId;//��ԱID

    private String staffName;//��Ա����

    private Date staffOnlinetime;//����ʱ��

    private String staffSex;//�Ա�

    private String staffPhone;//�ֻ�

    private String staffWorkphone;//�����绰

    private String staffEmail;//�����ʼ�

    private String staffDept;//����

    private String staffRole;//��ɫ

    private String staffUser;//��Ա

    private String staffRemark;//��ע

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName == null ? null : staffName.trim();
    }

    public Date getStaffOnlinetime() {
        return staffOnlinetime;
    }

    public void setStaffOnlinetime(Date staffOnlinetime) {
        this.staffOnlinetime = staffOnlinetime;
    }

    public String getStaffSex() {
        return staffSex;
    }

    public void setStaffSex(String staffSex) {
        this.staffSex = staffSex == null ? null : staffSex.trim();
    }

    public String getStaffPhone() {
        return staffPhone;
    }

    public void setStaffPhone(String staffPhone) {
        this.staffPhone = staffPhone == null ? null : staffPhone.trim();
    }

    public String getStaffWorkphone() {
        return staffWorkphone;
    }

    public void setStaffWorkphone(String staffWorkphone) {
        this.staffWorkphone = staffWorkphone == null ? null : staffWorkphone.trim();
    }

    public String getStaffEmail() {
        return staffEmail;
    }

    public void setStaffEmail(String staffEmail) {
        this.staffEmail = staffEmail == null ? null : staffEmail.trim();
    }

    public String getStaffDept() {
        return staffDept;
    }

    public void setStaffDept(String staffDept) {
        this.staffDept = staffDept == null ? null : staffDept.trim();
    }

    public String getStaffRole() {
        return staffRole;
    }

    public void setStaffRole(String staffRole) {
        this.staffRole = staffRole == null ? null : staffRole.trim();
    }

    public String getStaffUser() {
        return staffUser;
    }

    public void setStaffUser(String staffUser) {
        this.staffUser = staffUser == null ? null : staffUser.trim();
    }

    public String getStaffRemark() {
        return staffRemark;
    }

    public void setStaffRemark(String staffRemark) {
        this.staffRemark = staffRemark == null ? null : staffRemark.trim();
    }
}