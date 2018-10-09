package com.aaa.entity;

import java.util.Date;

public class Person {
private int id;
private String name;
private String gender;
private Date birthday;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getGander() {
	return gender;
}
public void setGander(String gender) {
	this.gender = gender;
}
public Date getBirthday() {
	return birthday;
}
public void setBirthday(Date birthday) {
	this.birthday = birthday;
}

}
