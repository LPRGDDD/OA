package com.gd.actions;

import java.sql.Date;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.gd.entity.Person;
import com.gd.service.PersonService;
import com.opensymphony.xwork2.ActionSupport;

import Util.Pager;
@Controller
public class PersonAction extends BaseAction{
@Autowired
private PersonService ser;
private Pager page;
private Person p;
private int curPage;
private int pageSize=4;
public PersonService getSer() {
	return ser;
}

public void setSer(PersonService ser) {
	this.ser = ser;
}
public String find(){
	ServletActionContext.getRequest().setAttribute("list", ser.find());
	return "find";
}
public void findObj(){
	ServletActionContext.getRequest().setAttribute("list", ser.find());
}

public String findByPages(){
	Pager pa=ser.findByPagers(curPage, pageSize);
	getRequest().put("p", pa);
	return "findByPages";
	
}

public String del(){
	ser.del(p);
	findObj();
	return "del";
	
}
public String get(){
	Person p1=ser.get(p.getId());
	ServletActionContext.getRequest().setAttribute("p", p1);
	return "get";
}
public String update(){
	System.out.println(p.getName()+p.getBirthday()+p.getGender()+p.getId());
	ser.update(p);
	findObj();
	return "update";
	
}
public String save(){
	ser.save(p);
	findObj();
	return "save";
}

public Pager getPage() {
	return page;
}

public void setPage(Pager page) {
	this.page = page;
}

public Person getP() {
	return p;
}

public void setP(Person p) {
	this.p = p;
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
