package com.lpr.entity;

public class UserRole {
	/**
	 * �û���ɫ��
	 */
    private Integer id;//�û���ɫ���
    
    /*��ɫ��*/
    private Role role;
    /*�û���*/
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