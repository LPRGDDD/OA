package com.lwb.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lwb.dao.RecordDao;
import com.lwb.entity.Record;
import com.lwb.service.RecordService;
@Service
public class RecordServiceImpl implements RecordService {

	@Autowired
	private RecordDao dao;
	@Override
	public Map queryRecord(int id) {
		// TODO Auto-generated method stub
		return dao.queryRecord(id);
	}
	@Override
	public List<Map> RecordqueryAllrck() {
		// TODO Auto-generated method stub
		return dao.RecordqueryAllrck();
	}
	@Override
	public Map recordById(int id) {
		// TODO Auto-generated method stub
		return dao.recordById(id);
	}
	@Override
	public int saveRecord(Record h) {
		// TODO Auto-generated method stub
		return dao.saveRecord(h);
	}
	@Override
	public int updateStats5(int id) {
		// TODO Auto-generated method stub
		return dao.updateStats5(id);
	}
	@Override
	public List<Map> seleDept() {
		// TODO Auto-generated method stub
		return dao.seleDept();
	}
	@Override
	public List<Map> seleroles() {
		// TODO Auto-generated method stub
		return dao.seleroles();
	}
	@Override
	public int updateRecord(Record r) {
		// TODO Auto-generated method stub
		return dao.updateRecord(r);
	}

}
