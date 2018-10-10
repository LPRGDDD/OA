package com.gd.entity;

public class Student {
	private int sid;
	private String sname;
	private String sgender;
	private Classes classes;

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSgender() {
		return sgender;
	}

	public void setSgender(String sgender) {
		this.sgender = sgender;
	}

	public Classes getClasses() {
		return classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}

	@Override
	public String toString() {
		return "Student [sid=" + sid + ", sname=" + sname + ", sgender=" + sgender + ", classes=" + classes + "]";
	}

	public Student(int sid, String sname, String sgender) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.sgender = sgender;
	}

	public Student(String sname, String sgender) {
		super();
		this.sname = sname;
		this.sgender = sgender;
	}

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

}
