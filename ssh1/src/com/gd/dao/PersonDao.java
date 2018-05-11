package com.gd.dao;

import java.util.List;

import com.gd.entity.Person;

import Util.Pager;

public interface PersonDao {
public List find();
public void del(Person p);
public Person get(int id);
public void update(Person p);
public void save(Person p);
public Pager findByPagers(final int curPage,final int pageSize);
}
