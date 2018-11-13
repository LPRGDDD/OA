package com.lpr.entity;

public class UserRole {
	/**
	 * 用户角色表
	 */
    private Integer id;//用户角色编号
    
    /*角色表*/
    private Role role;
    /*用户表*/
    private User user;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}