package com.lpr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lpr.dao.ItemTypeMapper;
import com.lpr.entity.ItemType;
import com.lpr.service.ItemTypeService;
/**
 * 薪酬项目类型表
 * @author 刘培然
 *
 */
@Service
public class ItemTypeServiceImpl implements ItemTypeService{
@Autowired
private ItemTypeMapper dao;
	@Override
	//薪酬项目类型表的查询方法
	public List<Map<String, Object>> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	//薪酬项目类型表的添加方法
	public int insert(ItemType itemtype) {
		// TODO Auto-generated method stub
		return dao.insert(itemtype);
	}

}
