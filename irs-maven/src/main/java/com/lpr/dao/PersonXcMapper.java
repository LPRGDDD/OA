package com.lpr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import com.lpr.entity.PersonXc;

public interface PersonXcMapper {
	/**
	 * ����Ա��н�������� ɾ�� 
	 * @param personxcIdԱ��н��������
	 * @return
	 */
    int deleteByPrimaryKey(Integer personxcId);
    /**
     * Ա��н��������ñ����
     * @param record
     * @return
     */
    int insert(PersonXc record);
    /**
     * Ա��н��������ñ����
     * @param record
     * @return
     */
    int insertSelective(PersonXc record);
    /**
     * ����Ա��н�������Ų�ѯ
     * @param personxcIdԱ��н��������
     * @return
     */
    PersonXc selectByPrimaryKey(Integer personxcId);
    /**
     * Ա��н��������ñ��޸�
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(PersonXc record);
    /**
     * Ա��н��������ñ��޸�
     * @param record
     * @return
     */
    int updateByPrimaryKey(PersonXc record);
    /**
     * �����û�ID��ѯ��ǰ�û�н�����
     * @param userId
     * @return
     */
    public List<Map<String, Object>> findAll(Integer userId);
    /**
     * Ա��н������ķ�ҳ��ѯ
     * @param keyWord
     * @param userName
     * @return
     */
    public List<Map> findPage();
    /**
     * ����Ա����Ų�ѯԱ�������Ƿ����
     * @param id
     * @return
     */
    //@Select("select personxc_id from tb_personxc where tb_personxc.id=#{id}")
    public int findById(@Param("id")long id);
    /**
     * ����ID��ѯһ���������
     * @param uid
     * @return
     */
    public List<Map> findByUid(@Param("uid")int uid);
}