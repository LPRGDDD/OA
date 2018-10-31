package com.lxm.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lxm.entity.Synthesis;

public interface SynthesisMapper {
   public int deleteByPrimaryKey(Integer sid);
   /**
    * ��� ���
    * @param record
    * @return
    */
   public int insert(Synthesis record);
   /**
    * ��ѯ�� systate=1 ʱ��  �����
    * @return id ���ݵ�¼��Աid��ѯ��Ӧ������Ǽ����
    */
   public List<Map<String,Object>> selectAll(int id);
   /**
    * ��ѯ�� systate=1 ʱ��  �����
    * @return id ���ݵ�¼��Աid��ѯ��Ӧ������Ǽ����
    */
   public List<Map<String,Object>> selectAll1();
   /**
    * ����Sid ��ѯ������¼  �����޸�
    * @param sId 
    * @param id ��¼��id
    * @return
    */
   public Map<String,Object> selectUpdate(@Param("id")int id,@Param("sId")int sId);
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
   
   
   public Synthesis selectByPrimaryKey(Integer sid);

   public int updateByPrimaryKeySelective(Synthesis record);

   public int updateByPrimaryKey(Synthesis record);
}