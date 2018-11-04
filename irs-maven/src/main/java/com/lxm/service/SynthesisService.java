package com.lxm.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

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
	   /**
	    * �鿴���� 
	    * @param id ����Ա��id
	    * @param sId �������
	    * @return
	    */
	   public Map<String,Object> selectXiang(@Param("id")int id,@Param("sId")int sId);
	   /**
	    *ͨ������ 
	    * @param sid ���������
	    * @return
	    */
	   public int updateState(int sid);
	   /**
	    * ���������� ��ѯ
	    * @param id
	    * @return
	    */
	 //  public List<Map<String,Object>> ShenWaiChu(int id);
	   /**
	    * ���������� ��ѯ
	    * @param id
	    * @return
	    */
	   public List<Map<String,Object>> ShenWaiChu(Map<String,Object> map);
	   /**
	    * ����������  ʱ����� �ع�
	    * @param sid 
	    * @return
	    */
	   public int WaiChuHuiGui(Map<String,Object> map);
	   /**
	    * ����ʱ �޸�����
	    * @param map
	    * @return
	    */
	   public  int BoHuiUpdate(Map<String,Object> map);
	   /**
	    * �����ٵǼ�
	    * @param sy
	    * @return
	    */
	   public int QingJiaSave(Synthesis sy);
	   /**
	    * ��½��Ա ��ѯ syState=2 ��ټ�¼  
	    * @param id denglurenyuanId
	    * @return
	    */
	   public List<Map<String,Object>> QingJiaSel(int id);
	   /**
	    * ��½��Ա ��ѯ syState=3 �Ӱ��¼
	    * @param id
	    * @return
	    */
	   public List<Map<String,Object>> JiaBanSel(int id);
	   /**
	    *  ��½��Ա ��ѯ syState=4 �����¼
	    * @return
	    */
	   public List<Map<String,Object>>  ChuChaiSel(int id);
	   /**
	    * ����Sid ��ѯ������¼  ���мӰ��޸�
	    * @param sId 
	    * @param id ��¼��id
	    * @return
	    */
	   public Map<String,Object> JiaBanUpdate(@Param("id")int id,@Param("sId")int sId);
	   /**
	    * ����Sid ��ѯ������¼  ��������޸�
	    * @param sId 
	    * @param id ��¼��id
	    * @return
	    */
	   public Map<String,Object> QingJiaUpdate(@Param("id")int id,@Param("sId")int sId);
	   /**
	    * ����Sid ��ѯ������¼  ���г����޸�
	    * @param sId 
	    * @param id ��¼��id
	    * @return
	    */
	   public Map<String,Object> ChuChaiUpdate(@Param("id")int id,@Param("sId")int sId);
	   /**
	    * �޸���ٵǼǼ�¼ 
	    * @param sy
	    * @return
	    */
	   public int QingjiaXiu(Synthesis sy);
	   /**
	    * �������
	    * @param sId 
	    * @param id ��¼��id
	    * @return
	    */
	   public Map<String,Object> selectUpdateQing(@Param("id")int id,@Param("sId")int sId);
	   /**
	    * ��� �������ѯ  �ѻع��ѯ
	    * @param id
	    * @return
	    */
	   public List<Map<String,Object>> ShenQing(int id);
	   /**
	    * �Ӱ� �������ѯ  �ѻع��ѯ
	    * @param id
	    * @return
	    */
	   public List<Map<String,Object>> ShenJia(int id);
	   /**
	    * ��ӳ���ǼǼ�¼
	    * @param sy
	    * @return
	    */
	   public int JiaBanSave(Synthesis sy);
	   /**
	    * �޸ĳ���ǼǼ�¼
	    * @param sy
	    * @return
	    */
	   public int ChuChaiXiu(Synthesis sy);
	   /**
	    * ���� �������ѯ  �ѻع��ѯ
	    * @param id
	    * @return
	    */
	   public List<Map<String,Object>> ShenChuChai(int id);
}
