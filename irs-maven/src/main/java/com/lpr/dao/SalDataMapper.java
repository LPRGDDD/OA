package com.lpr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lpr.entity.SalData;

public interface SalDataMapper {
	/**
	 * ���ݹ����ϱ����ɾ��
	 * @param salDataId�����ϱ����
	 * @return
	 */
    int deleteByPrimaryKey(Integer salDataId);
    /**
     * ���������е��ϱ����ݱ����
     * @param record
     * @return
     */
    int insert(SalData record);
    /**
     * ���������е��ϱ����ݱ����
     * @param record
     * @return
     */
    int insertSelective(SalData record);
    /**
     * ���ݹ����ϱ���Ų�ѯ
     * @param salDataId
     * @return
     */
    SalData selectByPrimaryKey(Integer salDataId);
    /**
     * ���������е��ϱ����ݱ��޸�
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(SalData record);
    /**
     * ���������е��ϱ����ݱ��޸�
     * @param record
     * @return
     */
    int updateByPrimaryKey(SalData record);
    /**
     * ����״̬��1,0�����з�ҳ��ѯ
     * @param keyWord
     * @param userName
     * @return
     */
    public List<Map> findByStatus();
}