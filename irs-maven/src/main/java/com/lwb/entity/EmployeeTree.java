package com.lwb.entity;

import java.util.List;

public class EmployeeTree {
   private Integer id;
   private Integer pid;
   private String text;
   private String state;
   private List children;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public Integer getPid() {
	return pid;
}
public void setPid(Integer pid) {
	this.pid = pid;
}
public String getText() {
	return text;
}
public void setText(String text) {
	this.text = text;
}
public List getChildren() {
	return children;
}
public void setChildren(List children) {
	this.children = children;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
   
   
}
