package com.lwb.serviceImpl;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lwb.dao.ScreenDao;
import com.lwb.entity.Screen;
import com.lwb.service.ScreenService;
@Service
public class ScreenServiceImpl implements ScreenService {

	@Autowired
	private ScreenDao dao;

	@Override
	public List<Map> queryScreen(String keyWord) {
		// TODO Auto-generated method stub
		return dao.queryScreen(keyWord);
	}
    @Transactional
	@Override
	public int ScreenSave(Screen s) {

		return dao.ScreenSave(s);
	}

	@Override
	public Map ScreenById(int id) {
		// TODO Auto-generated method stub
		return dao.ScreenById(id);
	}

	@Override
	public int updateScreen(Screen s) {
		// TODO Auto-generated method stub
		return dao.updateScreen(s);
	}

	@Override
	public int deleteScreen(int id) {
		// TODO Auto-generated method stub
		return dao.deleteScreen(id);
	}

	@Override
	public List<Map> ptAll() {
		// TODO Auto-generated method stub
		return dao.ptAll();
	}

	@Override
	public List<Map> ptAllId(int id) {
		// TODO Auto-generated method stub
		return dao.ptAllId(id);
	}

	@Override
	public List<Map> talentId(int id) {
		// TODO Auto-generated method stub
		return dao.talentId(id);
	}
	@Override
	public List<Map<String, Object>> userScreen() {
		// TODO Auto-generated method stub
		return dao.userScreen();
	}
	
	
	//ÐÞ¸Ä×´Ì¬
	@Override
	public int updateStats1(int id) {
		// TODO Auto-generated method stub
		return dao.updateStats1(id);
	}
	@Override
	public int updateStats2(int id) {
		// TODO Auto-generated method stub
		return dao.updateStats2(id);
	}
	@Override
	public int updateStats3(int id) {
		// TODO Auto-generated method stub
		return dao.updateStats3(id);
	}

}
