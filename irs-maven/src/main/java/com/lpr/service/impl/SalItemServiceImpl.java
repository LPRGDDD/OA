package com.lpr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lpr.dao.SalItemMapper;
import com.lpr.entity.SalItem;
import com.lpr.service.SalItemService;
@Service
public class SalItemServiceImpl implements SalItemService{
@Autowired
private SalItemMapper dao;
	@Override
	//薪酬项目定义表的查询方法
	public List<Map<String, Object>> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	//薪酬项目定义表的添加方法
	public int insert(SalItem salitem) {
		// TODO Auto-generated method stub
		return dao.insert(salitem);
	}

	@Override
	//薪酬项目定义表的编辑
	public int update(SalItem salitem) {
		// TODO Auto-generated method stub
		return dao.update(salitem);
	}

	@Override
	//薪酬项目定义表的删除
	public int delete(int itemId) {
		// TODO Auto-generated method stub
		return dao.delete(itemId);
	}

	@Override
	//薪酬项目定义表编辑之前的查询
	public SalItem selectByPrimaryKey(Integer itemId) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(itemId);
	}

}
