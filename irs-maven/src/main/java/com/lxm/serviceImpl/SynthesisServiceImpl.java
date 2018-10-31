package com.lxm.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxm.dao.SynthesisMapper;
import com.lxm.entity.Synthesis;
import com.lxm.service.SynthesisService;
@Service
public class SynthesisServiceImpl implements SynthesisService {
	@Autowired
	private SynthesisMapper sm;
	@Override
	@Transactional
	public int insert(Synthesis record) {
		// TODO Auto-generated method stub
		return sm.insert(record);
	}
	@Override
	public List<Map<String, Object>> selectAll(int id) {
		// TODO Auto-generated method stub
		return sm.selectAll(id);
	}
	@Override
	public Map<String,Object> selectUpdate(int id, int sId) {
		// TODO Auto-generated method stub
		return sm.selectUpdate(id, sId);
	}
	@Override
	@Transactional
	public int updateWai(Synthesis ss) {
		// TODO Auto-generated method stub
		return sm.updateWai(ss);
	}
	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return sm.delete(id);
	}
	@Override
	public List<Map<String, Object>> selectDaiShen(int id) {
		// TODO Auto-generated method stub
		return sm.selectDaiShen(id);
	}
	

}
