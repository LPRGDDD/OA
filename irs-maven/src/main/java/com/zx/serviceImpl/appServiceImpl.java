package com.zx.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zx.dao.applyMapper;
import com.zx.entity.apply;
import com.zx.entity.shop;
import com.zx.service.appService;
@Service
public class appServiceImpl implements appService{
@Autowired
private applyMapper dao;
	@Override
	public List<Map> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}
	@Override
	public int insert(apply ap) {
		// TODO Auto-generated method stub
		return dao.insert(ap);
	}
	@Override
	public List<Map> getAll() {
		// TODO Auto-generated method stub
		return dao.getAll();
	}
	@Override
	public int deleteone(int ApId) {
		// TODO Auto-generated method stub
		return dao.deleteapp(ApId);
	}
	@Override
	public List<Map> findById(int ApId) {
		// TODO Auto-generated method stub
		return dao.findById(ApId);
	}
	@Override
	public List<Map> findByState(int id) {
		// TODO Auto-generated method stub
		return dao.findByState(id);
	}
	@Transactional
	public int updateState(int ApId) {
		// TODO Auto-generated method stub
		return dao.updateState(ApId);
	}
	@Override
	public List<Map> findByState2() {
		// TODO Auto-generated method stub
		return dao.findByState2();
	}
	@Override
	public List<Map> findByState3(int ApId) {
		// TODO Auto-generated method stub
		return dao.findByState3(ApId);
		
	}
	@Override
	public int updateState1(int ApId) {
		// TODO Auto-generated method stub
		return dao.updateState1(ApId);
	}
	@Override
	public List<Map> findBydetail(int ApId) {
		// TODO Auto-generated method stub
		return dao.findBydetail(ApId);
	}
	@Override
	public int updateNum(shop s) {
		// TODO Auto-generated method stub
		return dao.updateNum(s);
	}
	@Override
	public List<Map> findById2(int id) {
		// TODO Auto-generated method stub
		return dao.findById2(id);
	}
	@Override
	public List<Map> findById3(int ApId) {
		// TODO Auto-generated method stub
		return dao.findById3(ApId);
	}
	@Override
	public int insapp(apply a) {
		// TODO Auto-generated method stub
		return dao.insapp(a);
	}
	@Override
	public List<Map<String, Object>> findBycondition(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.findBycondition(map);
	}
}
