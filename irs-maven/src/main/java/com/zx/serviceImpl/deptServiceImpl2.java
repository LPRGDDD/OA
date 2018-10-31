package com.zx.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zx.dao.goodtypeMapper;
import com.zx.entity.good_type;
import com.zx.entity.goodtype;

import com.zx.service.deptService2;
@Service
public class deptServiceImpl2 implements deptService2{
@Autowired
private goodtypeMapper mapper;
	@Override
	public List<Map> queryAll() {
		// TODO Auto-generated method stub
		return mapper.queryAll();
	}

	@Override
	public int insert(goodtype gt) {
		// TODO Auto-generated method stub
		int a= mapper.insert(gt);
		return a;
	}

	@Override
	public int delete(int go_id) {
		// TODO Auto-generated method stub
		int a=mapper.deleteByPrimaryKey(go_id);
		return a;
	}

	@Override
	public List<Map> findone(int go_id) {
		// TODO Auto-generated method stub
		List<Map> list=mapper.findone(go_id);
		return list;
	}

	@Override
	public int updateone(good_type gt) {
		// TODO Auto-generated method stub
		int a=mapper.updateone(gt);
		return a;
	}

	@Override
	public List<Map> findByid() {
		// TODO Auto-generated method stub
		return mapper.findByid();
	}

	@Override
	public List<goodtype> findtype(int cId) {
		// TODO Auto-generated method stub
		return mapper.findtype(cId);
	}

	@Override
	public List<goodtype> findtype2(int goId) {
		// TODO Auto-generated method stub
		return mapper.findtype2(goId);
	}

}
