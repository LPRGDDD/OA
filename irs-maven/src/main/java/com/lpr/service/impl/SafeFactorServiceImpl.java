package com.lpr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lpr.dao.SafeFactorMapper;
import com.lpr.service.SafeFactorService;
@Service
public class SafeFactorServiceImpl implements SafeFactorService{
@Autowired
private SafeFactorMapper dao;

@Override
//保险系数的查询方法
public List<Map<String, Object>> findAll() {
	// TODO Auto-generated method stub
	return dao.findAll();
}

}
