package com.lxm.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lxm.dao.SpringFestivalDao;
import com.lxm.entity.SpringFestival;
import com.lxm.service.SpringFestivalService;
@Service
public class SpringFestivalServiceImpl implements SpringFestivalService {
	@Autowired
	private SpringFestivalDao sd;
	@Override
	public List<Map<String, Object>> findAll() {
		
		return sd.findAll();
	}

	@Override
	public int save(SpringFestival sf) {
		// TODO Auto-generated method stub
		return sd.save(sf);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return sd.delete(id);
	}

	@Override
	public int update(Map<String,Object> map) {
		// TODO Auto-generated method stub
		return sd.update(map);
	}

	@Override
	public SpringFestival updateSpring(int id) {
		// TODO Auto-generated method stub
		return sd.updateSpring(id);
	}

	@Override
	public int updateSpringFestival(SpringFestival sf) {
		// TODO Auto-generated method stub
		return sd.updateSpringFestival(sf);
	}

}
