package com.zx.dao;

import java.util.List;
import java.util.Map;

import com.zx.entity.apply;
import com.zx.entity.shop;

public interface applyMapper {
	//��ҳ��ѯ
	public List<Map> getAll();
	//�����¼��ѯ
	public List<Map> findAll();
	//����
	public int insert(apply ap);
//    ɾ��
	public int deleteapp(int ApId);
//	����ID��ѯ
	public List<Map> findById(int ApId);
//	����״̬��ѯ������δ��׼
	public List<Map> findByState(int id);
//	����״̬��ѯ
	public List<Map> findByState2();
//	����״̬��ѯdetail
	public List<Map> findBydetail(int ApId);
	
	public List<Map> findByState3(int ApId);
//	�޸Ŀ��
	public int updateNum(shop s);
//	�޸�״̬
	public int updateState(int ApId);
//�ڶ����޸�״̬ 
	public int updateState1(int ApId);
//	����id�������¼
	public List<Map> findById2(int id);
//	����id�������¼
	public List<Map> findById3(int ApId);
//	¼��ܾ���׼����
	public int insapp(apply a);
//	��������ѯ
	public List<Map<String,Object> > findBycondition(Map<String,Object> map);
}