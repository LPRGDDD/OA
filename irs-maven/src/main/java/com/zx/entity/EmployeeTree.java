package com.zx.entity;

import java.util.List;

public class EmployeeTree {
   private int id;
   private int pid;
   private String text;
   private List children;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
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
   
}
