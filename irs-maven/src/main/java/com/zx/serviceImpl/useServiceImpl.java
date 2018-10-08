package com.zx.serviceImpl;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zx.dao.userMapper;
import com.zx.entity.shop;
import com.zx.service.useService;
@Service
public class useServiceImpl implements useService{
@Autowired
private userMapper useDao;
	@Override
	public List<Map> findAll() {
		// TODO Auto-generated method stub
		return useDao.findAll();
	}
}
