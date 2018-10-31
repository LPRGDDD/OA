package com.lwb.service;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Screen;

public interface ScreenService {
	   //��ҳ��ѯ����
	   public List<Map> queryScreen(@Param("keyWord") String keyWord);
	   //��ѯ�ƻ����û���Ϣ
	   public List<Map> ptAll();
	   //��ѯ�ƻ���Ա
	   public List<Map> ptAllId(int id);
	 //��ѯ�ƻ���Ա
	   public List<Map> talentId(int id);
	   //�����Ʒ
	   public int ScreenSave(Screen s);
	   //��ѯ�û���user������
	   public List<Map<String, Object>> userScreen();
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
