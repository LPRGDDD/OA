package com.lxm.service;

import java.util.List;
import java.util.Map;

import com.lxm.entity.Synthesis;

public interface SynthesisService {
	 /**
	    * ��� ���
	    * @param record
	    * @return
	    */
	   public int insert(Synthesis record);
	   /**
	    * ��ѯ�� systate=1 ʱ��  �����
	    * @return
	    */
	   public List<Map<String,Object>> selectAll(int id);
	  
	   /**
	    * ����Sid ��ѯ������¼  �����޸�
	    * @param sId 
	    * @param id ��¼��id
	    * @return
	    */
	   public Map<String,Object> selectUpdate(int id,int sId);
	   /**
	    * �޸��������
	    * @param ss
	    * @return
	    */
	   public int updateWai(Synthesis ss);
	   /**
	    * ɾ��
	    * @param id
	    * @return
	    */
	   public int delete(int id);
	   /**
	    * ��ѯ��Ҫ�Լ��������������١��Ӱࡢ����
	    * 
	    * @param id ��¼����ԱID
	    * @return
	    */
	   public List<Map<String,Object>> selectDaiShen(int id);

}
