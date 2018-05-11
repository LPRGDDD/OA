package com.gd.actions;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.gd.entity.Students;
import com.gd.service.StudentService;
import com.opensymphony.xwork2.ActionSupport;

import Util.Pager;
@Controller
public class StudentAction extends BaseAction{
private Students s;
@Autowired
private StudentService ser;
private int curPage;
private int pageSize=4;

public StudentService getSer() {
	return ser;
}

public void setSer(StudentService ser) {
	this.ser = ser;
}

public String find(){
	ServletActionContext.getRequest().setAttribute("list", ser.find());
	return "stu_find";
	
}
public String del(){
	return "stu_del";
	
}
public String findByPage(){
	Pager p=ser.findByPage(curPage, pageSize);
	getRequest().put("p", p);
	return "stu_find";
	
}










public Students getS() {
	return s;
}

public void setS(Students s) {
	this.s = s;
}

public int getCurPage() {
	return curPage;
}

public void setCurPage(int curPage) {
	this.curPage = curPage;
}

public int getPageSize() {
	return pageSize;
}

public void setPageSize(int pageSize) {
	this.pageSize = pageSize;
}
 
}
