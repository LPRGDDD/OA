package com.gd.entity;

import java.util.List;

public class Classes {
private int cid;
private String cname;
private List<Student> students;

public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
@Override
public String toString() {
	return "Classes [cid=" + cid + ", cname=" + cname + "]";
}

public List<Student> getStudents() {
	return students;
}
public void setStudents(List<Student> students) {
	this.students = students;
}
public Classes() {
	super();
	// TODO Auto-generated constructor stub
}

}
