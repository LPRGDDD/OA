package com.lpr.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lpr.dao.ItemTypeMapper;
import com.lpr.entity.ItemType;
import com.lpr.service.ItemTypeService;
/**
 * н����Ŀ���ͱ�
 * @author ����Ȼ
 *
 */
@Service
public class ItemTypeServiceImpl implements ItemTypeService{
@Autowired
private ItemTypeMapper dao;
	@Override
	//н����Ŀ���ͱ�Ĳ�ѯ����
	public List<Map<String, Object>> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	//н����Ŀ���ͱ����ӷ���
	public int insert(ItemType itemtype) {
		// TODO Auto-generated method stub
		return dao.insert(itemtype);
	}

}
