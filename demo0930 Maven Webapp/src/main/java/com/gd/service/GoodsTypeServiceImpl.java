package com.gd.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gd.dao.GoodsTypeMapper;
import com.gd.entity.Goods;
import com.gd.entity.GoodsType;
@Service
public class GoodsTypeServiceImpl implements GoodsTypeService {
	@Autowired
private GoodsTypeMapper dao;

	@Override
	public int save(GoodsType gt) {
		// TODO Auto-generated method stub
		return dao.insert(gt);
	}

	@Override
	public List<Map<String, Object>> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}
	
}
