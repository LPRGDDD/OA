package com.zx.entity;

/**
 * House entity. @author MyEclipse Persistence Tools
 */

public class House implements java.io.Serializable {

	// Fields

	private Integer hid;
	private Housetype housetype;
	private String hname;

	// Constructors

	/** default constructor */
	public House() {
	}

	/** full constructor */
	public House(Housetype housetype, String hname) {
		this.housetype = housetype;
		this.hname = hname;
	}

	// Property accessors

	public Integer getHid() {
		return this.hid;
	}

	public void setHid(Integer hid) {
		this.hid = hid;
	}

	public Housetype getHousetype() {
		return this.housetype;
	}

	public void setHousetype(Housetype housetype) {
		this.housetype = housetype;
	}

	public String getHname() {
		return this.hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

}