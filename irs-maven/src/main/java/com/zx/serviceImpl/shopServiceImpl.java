package com.zx.serviceImpl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zx.dao.shopMapper;
import com.zx.entity.shop;
import com.zx.service.shopService;
@Service
public class shopServiceImpl implements shopService{
@Autowired
private shopMapper mapper;

	@Override
	public List<shop> findAll() {
		// TODO Auto-generated method stub
		return mapper.findAll();
	}

	@Override
	public List<shop> findById(int sId) {
		// TODO Auto-generated method stub
		return mapper.findById(sId);
	}

	@Override
	public int updateshop(shop s) {
		// TODO Auto-generated method stub
		return mapper.updateshop(s);
	}

	@Override
	public int addshop(shop s) {
		// TODO Auto-generated method stub
		return mapper.addshop(s);
	}

	@Override
	public List<shop> findshop(int goId) {
		// TODO Auto-generated method stub
		return mapper.findshop(goId);
	}

	@Override
	public List<Map> findvag(@Param("cId")int cId, @Param("goId")int goId, @Param("sId")int sId) {
		// TODO Auto-generated method stub
		return mapper.findvag(cId, goId, sId);
	}
}
