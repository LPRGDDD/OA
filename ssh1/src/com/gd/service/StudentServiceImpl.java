package com.gd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gd.dao.StudentDao;

import Util.Pager;
@Service
public class StudentServiceImpl implements StudentService {
@Autowired
private StudentDao dao;
	@Override
	public List find() {
		// TODO Auto-generated method stub
		return dao.find();
	}
	public StudentDao getDao() {
		return dao;
	}
	public void setDao(StudentDao dao) {
		this.dao = dao;
	}
	@Override
	public Pager findByPage(int curPage, int pageSize) {
		// TODO Auto-generated method stub
		return dao.findByPage(curPage, pageSize);
	}

}
