package com.gd.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gd.dao.GoodsDao;
import com.gd.entity.Goods;
@Service
public class GoodsServiceImpl implements GoodsService{
	@Autowired
private GoodsDao dao;
	@Override
	public int save(Goods g) {
		// TODO Auto-generated method stub
		return dao.insert(g);
	}

	@Override
	public List<Map<String, Object>> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public Goods findById(int goodsid) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(goodsid);
	}

	@Override
	public int update(Goods g) {
		// TODO Auto-generated method stub
		return dao.updateByPrimaryKey(g);
	}

	@Override
	public int delete(int goodsid) {
		// TODO Auto-generated method stub
		return dao.deleteByPrimaryKey(goodsid);
	}

	@Override
	public List<Map<String, Object>> mohuFind(String goodsname) {
		// TODO Auto-generated method stub
		return dao.mohuFind(goodsname);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return dao.getCount();
	}

	@Override
	public List<Goods> pageFind(Map map) {
		// TODO Auto-generated method stub
		return dao.pageFind(map);
	}

}
