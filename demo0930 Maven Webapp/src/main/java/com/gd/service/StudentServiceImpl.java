package com.gd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gd.dao.StudentDao;
import com.gd.entity.Student;
@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
private StudentDao dao;
	@Override
	public List<Student> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public int save(Student s) {
		// TODO Auto-generated method stub
		return dao.save(s);
	}

}
