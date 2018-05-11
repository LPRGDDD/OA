package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.dao.StudentsDao;

@Service
public class StudentsServiceImpl implements StudentsService {

	@Autowired
	private StudentsDao studentsDao;
	
	public StudentsDao getStudentsDao() {
		return studentsDao;
	}

	public void setStudentsDao(StudentsDao studentsDao) {
		this.studentsDao = studentsDao;
	}

	@Override
	public List find() {
		// TODO Auto-generated method stub
		return studentsDao.find();
	}

}
