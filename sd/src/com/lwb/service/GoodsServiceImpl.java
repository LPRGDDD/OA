package com.lwb.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lwb.dao.GoodsDao;
import com.lwb.entity.Goods;
@Service
public class GoodsServiceImpl implements GoodsService {

	@Autowired
	private GoodsDao dao;
	@Override
	public List<Map<String, Object>> queryAll() {
		// TODO Auto-generated method stub
		return dao.queryAll();
	}
	@Override
	public int save(Goods g) {
		// TODO Auto-generated method stub
		return dao.save(g);
	}
	@Override
	public List<Map<String, Object>> queryTypeAll() {
		// TODO Auto-generated method stub
		return dao.queryTypeAll();
	}
	@Override
	public List<Map<String, Object>> queryID(int id) {
		// TODO Auto-generated method stub
		return dao.queryID(id);
	}

}
