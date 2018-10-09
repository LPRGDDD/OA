package com.gd.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.gd.entity.Student;

public interface StudentDao {
public Student select(int sid);
public List<Map> select1();

public int save(Student s);
public List<Student> findAll();
public List<Student> queryByName(@Param("sname") String sname);
public List<Student> queryStudent();


}
