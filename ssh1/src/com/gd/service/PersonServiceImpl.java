package com.gd.service;

import java.util.List;

import javax.management.RuntimeErrorException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.gd.dao.PersonDao;
import com.gd.entity.Person;

import Util.Pager;
@Service
public class PersonServiceImpl implements PersonService {
@Autowired
private PersonDao dao;
	@Override
	public List find() {
		// TODO Auto-generated method stub
		
		return dao.find();
	}
	public PersonDao getDao() {
		return dao;
	}
	public void setDao(PersonDao dao) {
		this.dao = dao;
	}
	//@Transactional(propagation=Propagation.REQUIRED)
	public void del(Person p) {
		// TODO Auto-generated method stub
		
		try {
			dao.del(p);
		} catch (Exception e) {
			// TODO: handle exception
			throw new RuntimeException(e);
		}
	}
	
	@Override
	public Person get(int id) {
		// TODO Auto-generated method stub
		return dao.get(id);
	}
	@Override
	public void update(Person p) {
		// TODO Auto-generated method stub
		dao.update(p);
	}
	@Override
	public void save(Person p) {
		// TODO Auto-generated method stub
		dao.save(p);
	}
	
	@Override
	public Pager findByPagers(int curPage,int pageSize) {
		// TODO Auto-generated method stub
		return dao.findByPagers(curPage, pageSize);
	}

}
