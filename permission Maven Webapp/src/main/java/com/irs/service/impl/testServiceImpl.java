package com.irs.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.irs.mapper.testMapping;
import com.irs.service.testService;
@Service
public class testServiceImpl implements testService {
@Autowired
private testMapping dao;
	@Override
	public List<Map> find() {
		// TODO Auto-generated method stub
		return dao.test();
	}

}
