package com.lwb.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Hire;

public interface HireService {
	//��ҳ��ѯ����
	   public List<Map> queryHire(@Param("keyWord") String keyWord);
	   //����ID��ѯ
	   public Map planById(int id);
	   //�޸�
	   public int updateHire(Hire h);
	   //ɾ��
	   public int deleteHire(int id);
	   
	   
	   //�����Ʒ
	   public int saveHire(Hire h);
	   //��ѯɸѡ�ɹ��ļƻ�
	   public List<Map> hireSePl();
	   //��ѯ�ƻ�����Ա
	   public List<Map> hireSeTa(int id);
	   //��ѯ�ƻ�����Ա�����ݣ��������ݸ���ҳ��
	   public List<Map> hTalentId(int id);
	   //��ѯ����
	   public List<Map> seleDept();
	   //�޸�״̬
	   public int updateStats4(int id);
}
