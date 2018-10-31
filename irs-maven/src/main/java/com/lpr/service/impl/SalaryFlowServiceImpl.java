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
	//�������̱����ӷ������½��������̣�
	public int insert(SalaryFlow sa) {
		// TODO Auto-generated method stub
		return dao.insert(sa);
	}

	@Override
	//�������̱�Ĳ�ѯ����
	public List<Map> findAll(String keyWord,String userName){
		return dao.findAll(keyWord, userName);
		
	}

	@Override
	//�������̱�ı༭
	public int update(SalaryFlow salaryflow) {
		// TODO Auto-generated method stub
		return dao.update(salaryflow);
	}

	@Override
	//�������̱��ɾ��
	public int delete(int salaryflowId) {
		// TODO Auto-generated method stub
		return dao.delete(salaryflowId);
	}

	@Override
	//�������̱�༭֮ǰ�Ĳ�ѯ
	public SalaryFlow selectByPrimaryKey(Integer salaryflowId) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(salaryflowId);
	}

	@Override
	//����ID��ѯ�������̱�
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
