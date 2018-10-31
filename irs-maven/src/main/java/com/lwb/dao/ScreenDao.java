package com.lwb.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Screen;

public interface ScreenDao {
	   //��ҳ��ѯ����
	   public List<Map> queryScreen(@Param("keyWord") String keyWord,@Param("uid") Integer uid);
	   //��ѯ�ƻ�
	   public List<Map> ptAll();
	   //��ѯ�ƻ�����Ա
	   public List<Map> ptAllId(int id);
	   //��ѯ�ƻ�����Ա���������ݸ���ҳ��
	   public List<Map> talentId(int id);
	   //��ѯ�û���user������
	   public List<Map<String, Object>> userScreen();
	   
	   //�½�ɸѡ
	   public int ScreenSave(Screen s);
	   
	    //����ID��ѯ
	   public Map ScreenById(int id);
	   //�޸�
	   public int updateScreen(Screen s);
	   
	   //ɾ��
	   public int deleteScreen(int id);
	   
	   
	   //�޸�״̬
	   public int updateStats1(int id);
	   public int updateStats2(int id);
	   public int updateStats3(int id);
	   
}
