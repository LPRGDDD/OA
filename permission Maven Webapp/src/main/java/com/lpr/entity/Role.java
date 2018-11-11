package com.lpr.entity;

public class Role {
	/**
	 * ½ÇÉ«±í
	 */
    private Integer userRoleId;

    private String userRoleName;

    private String userRoleBm;

    private String userRoleDept;

    private String userRoleType;

    private String userRoleRole;

    public Integer getUserRoleId() {
        return userRoleId;
    }

    public void setUserRoleId(Integer userRoleId) {
        this.userRoleId = userRoleId;
    }

    public String getUserRoleName() {
        return userRoleName;
    }

    public void setUserRoleName(String userRoleName) {
        this.userRoleName = userRoleName == null ? null : userRoleName.trim();
    }

    public String getUserRoleBm() {
        return userRoleBm;
    }

    public void setUserRoleBm(String userRoleBm) {
        this.userRoleBm = userRoleBm == null ? null : userRoleBm.trim();
    }

    public String getUserRoleDept() {
        return userRoleDept;
    }

    public void setUserRoleDept(String userRoleDept) {
        this.userRoleDept = userRoleDept == null ? null : userRoleDept.trim();
    }

    public String getUserRoleType() {
        return userRoleType;
    }

    public void setUserRoleType(String userRoleType) {
        this.userRoleType = userRoleType == null ? null : userRoleType.trim();
    }

    public String getUserRoleRole() {
        return userRoleRole;
    }

    public void setUserRoleRole(String userRoleRole) {
        this.userRoleRole = userRoleRole == null ? null : userRoleRole.trim();
    }
}