package com.zx.dao;

import java.util.List;
import java.util.Map;

import com.zx.entity.court;

public interface courtMapper {
//	��Ʒ���ѯ����
	public List<court> findAll();
	//��Ʒ���ѯ��ѯ����	
	public List<Map> findone();
}