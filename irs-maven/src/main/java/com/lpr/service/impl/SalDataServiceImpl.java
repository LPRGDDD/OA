package com.lpr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lpr.dao.SalDataMapper;
import com.lpr.service.SalDataService;
@Service
public class SalDataServiceImpl implements SalDataService{
@Autowired
private SalDataMapper dao;
	@Override
	//����״̬��1,0�����з�ҳ��ѯ
	public List<Map> findByStatus() {
		// TODO Auto-generated method stub
		return dao.findByStatus();
	}

}
