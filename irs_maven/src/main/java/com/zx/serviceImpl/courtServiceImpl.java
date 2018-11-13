package com.zx.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zx.dao.courtMapper;
import com.zx.entity.court;
import com.zx.service.courtService;
@Service
public class courtServiceImpl implements courtService{
@Autowired
private courtMapper mapper;
	@Override
	public List<court> findAll() {
		// TODO Auto-generated method stub
		return mapper.findAll();
	}
	@Override
	public List<Map> findone() {
		// TODO Auto-generated method stub
		return mapper.findone();
	}

}
