package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.dao.PersonDao;
import com.aaa.entity.Person;
import com.aaa.util.Pager;

@Service
public class PersonServiceImpl implements PersonService {
	@Autowired
	private PersonDao dao;
	

	public PersonDao getDao() {
		return dao;
	}

	public void setDao(PersonDao dao) {
		this.dao = dao;
	}

	@Transactional
	public void save(Person p) {
		dao.save(p);
	}

	public List find() {
		// TODO Auto-generated method stub
		return dao.find();
	}

	@Override
	public Pager findByPages(int curPage, int pageSize) {
		// TODO Auto-generated method stub
		return dao.findByPages(curPage, pageSize);
	}

	@Override
	public void delete(Person p) {
		dao.delete(p);
		
	}

	@Override
	public void update(Person p) {
		dao.update(p);
	}

}
