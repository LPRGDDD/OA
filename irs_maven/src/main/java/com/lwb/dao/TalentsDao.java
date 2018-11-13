package com.lwb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Talents;

public interface TalentsDao {

	     //��ҳ��ѯ����
	   public List<Map> queryAllrck(@Param("keyWord") String keyWord);
	   //��ѯ�ƻ�
	   public List<Map<String, Object>> planAll();
	     //�����Ʒ
	   public int saverck(Talents t);
	     //����ID��ѯ
	   public Map queryByIdrck(int id);
	     //�޸�
	   public int updaterck(Talents t);
	     //ɾ��
	   public int deleterck(int id);
}
