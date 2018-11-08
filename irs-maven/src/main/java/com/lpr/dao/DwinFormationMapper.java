package com.lpr.dao;

import java.util.List;
import java.util.Map;

import com.lpr.entity.DwinFormation;

public interface DwinFormationMapper {
	/**
	 * ���ݵ�λ��Ϣ���ɾ��
	 * @param dwinformationId��λ��Ϣ���
	 * @return
	 */
    int deleteByPrimaryKey(Integer dwinformationId);
    /**
     * ��λ��Ϣ�����
     * @param record
     * @return
     */
    int insert(DwinFormation record);
    /**
     * ��λ��Ϣ�����
     * @param record
     * @return
     */
    int insertSelective(DwinFormation record);
    /**
     * ���ݵ�λ��Ϣ��Ų�ѯ
     * @param dwinformationId
     * @return
     */
    DwinFormation selectByPrimaryKey(Integer dwinformationId);
    /**
     * ��λ��Ϣ���޸�
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(DwinFormation record);
    /**
     * ��λ��Ϣ���޸�
     * @param record
     * @return
     */
    int updateByPrimaryKey(DwinFormation record);
    /**
     * ��λ��Ϣ���ѯ
     * @return
     */
    public List<Map<String, Object>> findAll();
}