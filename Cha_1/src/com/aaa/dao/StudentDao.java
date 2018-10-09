package com.aaa.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.aaa.entity.Student;

public interface StudentDao {
public List<Student> findAll(@Param("name")String name);
}
