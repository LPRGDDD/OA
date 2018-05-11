package com.zx.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Housetype entity. @author MyEclipse Persistence Tools
 */

public class Housetype implements java.io.Serializable {

	// Fields

	private Integer htid;
	private String htname;
	private Set houses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Housetype() {
	}

	/** full constructor */
	public Housetype(String htname, Set houses) {
		this.htname = htname;
		this.houses = houses;
	}

	// Property accessors

	public Integer getHtid() {
		return this.htid;
	}

	public void setHtid(Integer htid) {
		this.htid = htid;
	}

	public String getHtname() {
		return this.htname;
	}

	public void setHtname(String htname) {
		this.htname = htname;
	}

	public Set getHouses() {
		return this.houses;
	}

	public void setHouses(Set houses) {
		this.houses = houses;
	}

}