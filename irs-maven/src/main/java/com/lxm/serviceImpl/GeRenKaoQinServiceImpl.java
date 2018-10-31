package com.lxm.serviceImpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lxm.dao.GeRenKaoQinDao;
import com.lxm.entity.GeRenEntity;
import com.lxm.entity.TbAdmin;
import com.lxm.service.GeRenKaoQinService;
@Service
public class GeRenKaoQinServiceImpl implements GeRenKaoQinService {
	@Autowired
	private GeRenKaoQinDao gd;
	@Override
	public GeRenEntity ShePiUser(int deptId) {
		// TODO Auto-generated method stub
		return gd.ShePiUser(deptId);
	}
	@Override
	public List<TbAdmin> findAdminName(int[] array) {
		// TODO Auto-generated method stub
		return gd.findAdminName(array);
	}

}
