package com.lwb.dao;

import java.util.Map;


import com.lwb.entity.Record;


public interface RecordDao {
	   //����ID��ѯ
	   public Map queryRecord(int id);
	   //�����Ʒ
	   public int saveRecord(Record h);
	   //����ID��ѯ
	   public Map recordById(int id);
	   //�޸�
	   public int updateRecord(Record h);
	   //ɾ��
	   public int deleteRecord(int id);
	   
	  
}
