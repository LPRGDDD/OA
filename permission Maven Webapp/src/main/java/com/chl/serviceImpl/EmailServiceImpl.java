package com.chl.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chl.dao.EmailDao;
import com.chl.service.EmailService;
@Service
public class EmailServiceImpl implements EmailService{
@Autowired
private EmailDao dao;

	@Override
	public List<Map> getAllUsers(String keyWord) {
		// TODO Auto-generated method stub
		return dao.getAllUsers(keyWord);
	}

}
