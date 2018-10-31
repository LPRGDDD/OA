package com.lwb.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Plan;
public interface PlanService {

	//��ҳ��ѯ����
	   public List<Map> queryPlan(@Param("keyWord") String keyWord);
	   //�����Ʒ
	   public int savePlan(Plan p);
	   //��ѯuser������
	   public List<Map<String, Object>> userAll();
	    //����ID��ѯ
	   public Map planById(int id);
	   //�޸�
	   public int updatePlan(Plan p);
	   //ɾ��
	   public int deletePlan(int id);
	   
	 //����״̬0��ѯ
	   public List<Map> fianAll0(@Param("keyWord") String keyWord);
	   //����״̬1��ѯ
	   public List<Map> fianAll1(@Param("keyWord") String keyWord);
	   //����״̬2��ѯ
	   public List<Map> fianAll2(@Param("keyWord") String keyWord);
	   //�޸ļƻ�״̬��׼
	   public int updatestate1(int id);
	   //�޸ļƻ�״̬Ϊ����׼
	   public int updatestate2(int id);
	   
	   
}
