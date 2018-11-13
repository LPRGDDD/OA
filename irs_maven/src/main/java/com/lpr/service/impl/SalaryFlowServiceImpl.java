package com.lpr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lpr.dao.SalaryFlowMapper;
import com.lpr.entity.SalaryFlow;
import com.lpr.service.SalaryFlowService;
@Service
public class SalaryFlowServiceImpl implements SalaryFlowService{
@Autowired
private SalaryFlowMapper dao;
	@Override
	//工资流程表的添加方法（新建工资流程）
	public int insert(SalaryFlow sa) {
		// TODO Auto-generated method stub
		return dao.insert(sa);
	}

	@Override
	//工资流程表的查询方法
	public List<Map> findAll(String keyWord,String userName){
		return dao.findAll(keyWord, userName);
		
	}

	@Override
	//工资流程表的编辑
	public int update(SalaryFlow salaryflow) {
		// TODO Auto-generated method stub
		return dao.update(salaryflow);
	}

	@Override
	//工作流程表的删除
	public int delete(int salaryflowId) {
		// TODO Auto-generated method stub
		return dao.delete(salaryflowId);
	}

	@Override
	//工资流程表编辑之前的查询
	public SalaryFlow selectByPrimaryKey(Integer salaryflowId) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(salaryflowId);
	}

	@Override
	//根据ID查询工资流程表
	public SalaryFlow findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public int setXcStatus(SalaryFlow s) {
		// TODO Auto-generated method stub
		if (s.getSalaryflowStatus()==0) {
			dao.setXcStatus0(s);
			return 1;
		}
		else if(s.getSalaryflowStatus()==1){
			dao.setXcStatus1(s);
			return 1;
		}
		return 0;
	}

}
