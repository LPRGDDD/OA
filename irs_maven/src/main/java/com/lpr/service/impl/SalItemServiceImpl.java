package com.lpr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lpr.dao.SalItemMapper;
import com.lpr.entity.SalItem;
import com.lpr.service.SalItemService;
@Service
public class SalItemServiceImpl implements SalItemService{
@Autowired
private SalItemMapper dao;
	@Override
	//н����Ŀ�����Ĳ�ѯ����
	public List<Map<String, Object>> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	//н����Ŀ��������ӷ���
	public int insert(SalItem salitem) {
		// TODO Auto-generated method stub
		return dao.insert(salitem);
	}

	@Override
	//н����Ŀ�����ı༭
	public int update(SalItem salitem) {
		// TODO Auto-generated method stub
		return dao.update(salitem);
	}

	@Override
	//н����Ŀ������ɾ��
	public int delete(int itemId) {
		// TODO Auto-generated method stub
		return dao.delete(itemId);
	}

	@Override
	//н����Ŀ�����༭֮ǰ�Ĳ�ѯ
	public SalItem selectByPrimaryKey(Integer itemId) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(itemId);
	}

}
