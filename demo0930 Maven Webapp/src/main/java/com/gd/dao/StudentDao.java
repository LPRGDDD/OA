package com.gd.dao;

import java.util.List;

import com.gd.entity.Student;

public interface StudentDao {
public List<Student> findAll();
public int save(Student s);
}
