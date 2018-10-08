package com.lwb.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lwb.dao.TalentsDao;
import com.lwb.entity.Talents;
import com.lwb.service.TalentsService;
@Service
public class TalentsServiceImpl implements TalentsService {

	@Autowired
	private TalentsDao dao;

	@Override
	public List<Map> queryAllrck(String keyWord) {
		// TODO Auto-generated method stub
		return dao.queryAllrck(keyWord);
	}

	@Override
	public int saverck(Talents t) {
		// TODO Auto-generated method stub
		return dao.saverck(t);
	}

	@Override
	public Map queryByIdrck(int id) {
		// TODO Auto-generated method stub
		return dao.queryByIdrck(id);
	}

	@Override
	public int updaterck(Talents t) {
		// TODO Auto-generated method stub
		return dao.updaterck(t);
	}

	@Transactional
	public int deleterck(int id) {
		   
		return dao.deleterck(id);
	}

	@Override
	public List<Map<String, Object>> planAll() {
		// TODO Auto-generated method stub
		return dao.planAll();
	}

	

}
