package com.lwb.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lwb.dao.PlanDao;
import com.lwb.entity.Plan;
import com.lwb.service.PlanService;
@Service
public class PlanServiceImpl implements PlanService {

	@Autowired
	private PlanDao dao;



	@Override
	public List<Map<String, Object>> userAll() {
		// TODO Auto-generated method stub
		return dao.userAll();
	}

	@Override
	public int updatestate1(int id) {
		// TODO Auto-generated method stub
		return dao.updatestate1(id);
	}

	@Override
	public int updatestate2(int id) {
		// TODO Auto-generated method stub
		return dao.updatestate2(id);
	}


	@Override
	public List<Map> fianAll0(String keyWord,Integer uid) {
		// TODO Auto-generated method stub
		return dao.fianAll0(keyWord, uid);
	}

	@Override
	public List<Map> fianAll1(String keyWord,Integer uid) {
		// TODO Auto-generated method stub
		return dao.fianAll1(keyWord, uid);
	}

	@Override
	public List<Map> fianAll2(String keyWord,Integer uid) {
		// TODO Auto-generated method stub
		return dao.fianAll2(keyWord, uid);
	}

	@Override
	public List<Map> queryPlan(String keyWord) {
		// TODO Auto-generated method stub
		return dao.queryPlan(keyWord);
	}

	@Override
	public int savePlan(Plan p) {
		// TODO Auto-generated method stub
		return dao.savePlan(p);
	}

	@Override
	public Map planById(int id) {

		return dao.planById(id);
	}

	@Override
	public int updatePlan(Plan p) {
		// TODO Auto-generated method stub
		return dao.updatePlan(p);
	}

	@Override
	public int deletePlan(int id) {
		// TODO Auto-generated method stub
		return dao.deletePlan(id);
	}

	@Override
	public int selebh(int id) {
		// TODO Auto-generated method stub
		return dao.selebh(id);
	}

	@Override
	public int selejh(String name) {
		// TODO Auto-generated method stub
		return dao.selejh(name);
	}

	

}
