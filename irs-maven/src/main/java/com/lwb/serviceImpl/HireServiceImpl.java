package com.lwb.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lwb.dao.HireDao;
import com.lwb.entity.Hire;
import com.lwb.service.HireService;
@Service
public class HireServiceImpl implements HireService {
     
	@Autowired
	private HireDao dao;
	
	@Override
	public List<Map> queryHire() {
		// TODO Auto-generated method stub
		return dao.queryHire();
	}


	@Override
	public Map planById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateHire(Hire h) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
	@Override
	public int saveHire(Hire h) {
		// TODO Auto-generated method stub
		return dao.saveHire(h);
	}
	
	@Override
	public List<Map> hireSePl() {
		// TODO Auto-generated method stub
		return dao.hireSePl();
	}

	@Override
	public List<Map> hireSeTa(int id) {
		// TODO Auto-generated method stub
		return dao.hireSeTa(id);
	}

	@Override
	public List<Map> hTalentId(int id) {
		// TODO Auto-generated method stub
		return dao.hTalentId(id);
	}

	@Override
	public List<Map> seleDept() {
		// TODO Auto-generated method stub
		return dao.seleDept();
	}


	@Override
	public int updateStats4(int id) {
		// TODO Auto-generated method stub
		return dao.updateStats4(id);
	}

}
