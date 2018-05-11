package com.gd.entity;

/**
 * Students entity. @author MyEclipse Persistence Tools
 */

public class Students implements java.io.Serializable {

	// Fields

	private Integer sid;
	private Classes classes;
	private String sname;
	private String sgender;

	// Constructors

	/** default constructor */
	public Students() {
	}

	/** full constructor */
	public Students(Classes classes, String sname, String sgender) {
		this.classes = classes;
		this.sname = sname;
		this.sgender = sgender;
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

	public String getSgender() {
		return this.sgender;
	}

	public void setSgender(String sgender) {
		this.sgender = sgender;
	}

}