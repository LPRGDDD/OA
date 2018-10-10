package com.gd.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gd.entity.Student;
public interface StudentService {
	public List<Student> findAll();
	public int save(Student s);
}
