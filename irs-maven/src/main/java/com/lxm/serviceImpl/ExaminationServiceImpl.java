package com.lxm.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lxm.dao.ExaminationMapper;
import com.lxm.entity.Examination;
import com.lxm.service.ExaminationService;
@Service
public class ExaminationServiceImpl implements ExaminationService {
	@Autowired
	private ExaminationMapper em;
	@Override
	public int insert(Examination record) {
		// TODO Auto-generated method stub
		return em.insert(record);
	}
	@Override
	public List<Map<String, Object>> selectByPrimaryKey() {
		// TODO Auto-generated method stub
		return em.selectByPrimaryKey();
	}
	@Override
	public Examination selectById(int id) {
		// TODO Auto-generated method stub
		return em.selectById(id);
	}
	@Override
	public int update(Examination e) {
		// TODO Auto-generated method stub
		return em.update(e);
	}
	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return em.delete(id);
	}
	

}
