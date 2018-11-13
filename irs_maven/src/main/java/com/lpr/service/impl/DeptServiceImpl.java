package com.lpr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lpr.dao.DeptMapper;
import com.lpr.entity.Dept;
import com.lpr.service.DeptService;
@Service
public class DeptServiceImpl implements DeptService{
@Autowired
private DeptMapper dao;
	@Override
	//部门表的查询方法
	public List<Map<String, Object>> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}
	@Override
	//根据部门编号进行分页查询
		public List<Map> findUser(Integer deptId) {
			// TODO Auto-generated method stub
			return dao.findUser(deptId);
		}
	@Override
	public List<Map> findAllUser() {
		// TODO Auto-generated method stub
		return dao.findAllUser();
	}
	@Override
	public List<Dept> findDept() {
		// TODO Auto-generated method stub
		return dao.findDept();
	}
}
