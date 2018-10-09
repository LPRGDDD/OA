package com.aaa.dao;

import com.aaa.entity.Person;

public interface PersonDao {
public Person queryById(int id);
public void save(Person p);
public int update(Person p);
public int delete(int id);
}
