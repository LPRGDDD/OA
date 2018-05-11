package com.aaa.dao;

import java.util.List;

import com.aaa.entity.Person;
import com.aaa.util.Pager;

public interface PersonDao {
	public void save(Person p);
	public void update(Person p);
	public void delete(Person p);
	public List find();
	public Pager findByPages(int curPage,int pageSize);
}
