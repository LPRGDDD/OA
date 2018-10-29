package com.lxm.serviceImpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lxm.dao.GeRenKaoQinDao;
import com.lxm.service.GeRenKaoQinService;
@Service
public class GeRenKaoQinServiceImpl implements GeRenKaoQinService {
	@Autowired
	private GeRenKaoQinDao gd;
	@Override
	public Map<String, Object> ShePiUser(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return gd.ShePiUser(map);
	}

}
