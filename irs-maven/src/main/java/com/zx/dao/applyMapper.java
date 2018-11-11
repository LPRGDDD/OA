package com.zx.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zx.entity.apply;
import com.zx.entity.shop;

public interface applyMapper {
	//��ҳ��ѯ
	public List<Map> getAll(@Param("id")int id);
	//�����¼��ѯ
	public List<Map> findAll();
	//����
	public int insert(apply ap);
//    ɾ��
	public int deleteapp(int ApId);
//	����ID��ѯ
	public List<Map> findById(int ApId);
//	����״̬��ѯ������δ��׼
	public List<Map> findByState();
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
//	���¹黹�й�
//	��ѯ ����id��Ϊ�黹��Ʒ
	public List<Map> findByState4(int id);
//	�޸���Ʒ״̬Ϊ4
	public int updateByState4(int ApId);
//	��ѯ ����id��Ϊ�黹��Ʒ
	public List<Map> findByState5(int id);
//	�޸���Ʒ״̬Ϊ5
	public int updateByState5(int ApId);
//	¼��ܾ���׼����
	public int insappl(apply a);
}