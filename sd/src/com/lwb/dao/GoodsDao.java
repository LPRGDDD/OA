package com.lwb.dao;

import java.util.List;
import java.util.Map;

import com.lwb.entity.Goods;

public interface GoodsDao {
	//��ѯ������Ʒ
   public List<Map<String, Object>> queryAll();
   //�����Ʒ
   public int save(Goods g);
   //��ѯqueryType������
   public List<Map<String, Object>> queryTypeAll();
   
   public List<Map<String, Object>> queryID(int id);
   //�޸�
   public int update(Goods g);
   //ɾ��
   public int update();
   
   
}
