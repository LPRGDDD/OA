package com.aaa.service;

import java.util.List;

import com.aaa.entity.Person;
import com.aaa.util.Pager;

public interface PersonService {
	public void save(Person p);
	public List find();
	public void delete(Person p);
	public void update(Person p);
	public Pager findByPages(int curPage,int pageSize);
}
