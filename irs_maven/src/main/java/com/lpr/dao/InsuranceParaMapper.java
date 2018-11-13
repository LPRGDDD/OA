package com.lpr.dao;

import com.lpr.entity.InsurancePara;

public interface InsuranceParaMapper {
	/**
	 * �����ϱ���Ϣ���ñ��ɾ��
	 * @param insuranceParaId�ϱ���Ϣ���ñ��
	 * @return
	 */
    int deleteByPrimaryKey(Integer insuranceParaId);
    /**
     * �ϱ���Ϣ���ñ����
     * @param record
     * @return
     */
    int insert(InsurancePara record);
    /**
     * �ϱ���Ϣ���ñ����
     * @param record
     * @return
     */
    int insertSelective(InsurancePara record);
    /**
     * �����ϱ���Ϣ���ñ�Ų�ѯ
     * @param insuranceParaId�ϱ���Ϣ���ñ��
     * @return
     */
    InsurancePara selectByPrimaryKey(Integer insuranceParaId);
    /**
     * �ϱ���Ϣ���ñ��޸�
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(InsurancePara record);
    /**
     * �ϱ���Ϣ���ñ��޸�
     * @param record
     * @return
     */
    int updateByPrimaryKey(InsurancePara record);
}