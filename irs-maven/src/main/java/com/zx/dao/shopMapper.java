package com.zx.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zx.entity.shop;

public interface shopMapper {
	//�������Ʋ�ѯ
	public List<shop> findById(int sId);
//	��״��ѯ����
	public List<shop> findAll();
//	�޸���Ʒ��Ϣ
	public int updateshop(shop s);
//	¼��
	public int addshop(shop s);
//	����goID��ѯ��Ʒ
	public List<shop> findshop(int goId);
//	ģ����ѯ
	public List<Map<String,Object>> findvag(Map<String,Object> map);
//���ݱ��

}