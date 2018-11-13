package com.lwb.dao;

import java.util.List;
import java.util.Map;


import com.lwb.entity.Record;


public interface RecordDao {
	   //����ID��ѯ������Ϣ
	   public Map queryRecord(int id);
	   //�����˲ſ�״̬��ѯ��¼��δ������Ա
	   public List<Map> RecordqueryAllrck();
	   //����ID��ѯ�˲ſ���Ϣ����ֵ
	   public Map recordById(int id);
	   //��ѯ����
	   public List<Map> seleDept();
	   //��ѯ��ɫ
	   public List<Map> seleroles();
	   //�����Ʒ
	   public int saveRecord(Record h);
	   //�޸�״̬
	   public int updateStats5(int id);
	   //�޸ĵ���
	   public int updateRecord(Record r);
	   
	  
}
