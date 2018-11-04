package com.lwb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Record;


public interface RecordDao {
	   //��ҳ��ѯ����
	   public List<Map> queryRecord(@Param("keyWord") String keyWord);
	   //�����Ʒ
	   public int saveRecord(Record h);
	   //����ID��ѯ
	   public Map recordById(int id);
	   //�޸�
	   public int updateRecord(Record h);
	   //ɾ��
	   public int deleteRecord(int id);
	   
	  
}
