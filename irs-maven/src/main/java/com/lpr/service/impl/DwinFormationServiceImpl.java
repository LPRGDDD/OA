package com.lpr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lpr.dao.DwinFormationMapper;
import com.lpr.service.DwinFormationService;
@Service
public class DwinFormationServiceImpl implements DwinFormationService{
@Autowired
private DwinFormationMapper dao;
	@Override
	//单位信息表的查询方法
	public List<Map<String, Object>> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

}
