package com.zx.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zx.entity.apply;
import com.zx.entity.shop;

public interface appService {
	//��ѯ����
   public List<Map> findAll();
   //¼��
   public int insert(apply ap);
   //��ѯ
   public List<Map> getAll();
   //ɾ��
   public int deleteone(int ApId);
   //�����ѯ
   public List<Map> findById(int ApId);
//   ������δ����
   public List<Map> findByState(int id);
//   ״̬��ѯ2
   public List<Map> findByState2();
   
   public List<Map> findByState3(int ApId);
//   �޸�״̬
   public int updateState(int ApId);
//   ״̬�޸�2
   public int updateState1(int ApId);
//   �����ѯdetail
   public List<Map> findBydetail(int ApId);
   //�޸Ŀ��
   public int updateNum(shop s);
}
