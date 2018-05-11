package com.aaa.entity;

import java.util.Date;

/**
 * Students entity. @author MyEclipse Persistence Tools
 */

public class Students implements java.io.Serializable {

	// Fields

	private Integer sid;
	private Classes classes;
	private String sname;
	private String gender;
	private Date birthday;
	private String address;

	// Constructors

	/** default constructor */
	public Students() {
	}

	/** minimal constructor */
	public Students(String sname) {
		this.sname = sname;
	}

	/** full constructor */
	public Students(Classes classes, String sname, String gender, Date birthday, String address) {
		this.classes = classes;
		this.sname = sname;
		this.gender = gender;
		this.birthday = birthday;
		this.address = address;
	}

	// Property accessors

	public Integer getSid() {
		return this.sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public Classes getClasses() {
		return this.classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}

	public String getSname() {
		return this.sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}