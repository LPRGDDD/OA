package com.lwb.serviceImpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lwb.dao.RecordDao;
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

}
