package com.lpr.dao;

import java.util.List;
import java.util.Map;

import com.lpr.entity.SafeFactor;

public interface SafeFactorMapper {
	/**
	 * ���ݱ���ϵ�����ɾ��
	 * @param safefactorId����ϵ�����
	 * @return
	 */
    int deleteByPrimaryKey(Integer safefactorId);
    /**
     * ����ϵ�������
     * @param record
     * @return
     */
    int insert(SafeFactor record);
    /**
     * ����ϵ�������
     * @param record
     * @return
     */
    int insertSelective(SafeFactor record);
    /**
     * ���ݱ���ϵ����Ų�ѯ
     * @param safefactorId����ϵ�����
     * @return
     */
    SafeFactor selectByPrimaryKey(Integer safefactorId);
    /**
     * ����ϵ�����޸�
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(SafeFactor record);
    /**
     * ����ϵ�����޸�
     * @param record
     * @return
     */
    int updateByPrimaryKey(SafeFactor record);
    /**
     * ����ϵ����ѯ����
     * @return
     */
    public List<Map<String, Object>> findAll();
}