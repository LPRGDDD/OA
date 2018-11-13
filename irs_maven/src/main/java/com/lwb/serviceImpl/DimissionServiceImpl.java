package com.lwb.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lwb.dao.DimissionDao;
import com.lwb.entity.Dimission;
import com.lwb.service.DimissionService;
@Service
public class DimissionServiceImpl implements DimissionService {

	@Autowired
	private DimissionDao dao;
	
	@Override
	public List<Map> queryDimission(String name, String dept, String leavetype) {
		// TODO Auto-generated method stub
		return dao.queryDimission(name, dept, leavetype);
	}

	@Override
	public int dimissionSave(Dimission di) {
		// TODO Auto-generated method stub
		return dao.dimissionSave(di);
	}

	@Override
	public Map dimissionById(int id) {
		// TODO Auto-generated method stub
		return dao.dimissionById(id);
	}

	@Override
	public int updateDimission(Dimission di) {
		// TODO Auto-generated method stub
		return dao.updateDimission(di);
	}

	@Override
	public int updaterecordStats4(int id) {
		// TODO Auto-generated method stub
		return dao.updaterecordStats4(id);
	}


}
