package com.aaa.entity;

import java.util.Date;

/**
 * Person entity. @author MyEclipse Persistence Tools
 */

public class Person implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String sex;
	private Date birthday;

	// Constructors

	/** default constructor */
	public Person() {
	}

	/** minimal constructor */
	public Person(String name, String sex) {
		this.name = name;
		this.sex = sex;
	}

	/** full constructor */
	public Person(String name, String sex, Date birthday) {
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

}