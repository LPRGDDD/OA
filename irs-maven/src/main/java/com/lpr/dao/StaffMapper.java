package com.lpr.dao;

import com.lpr.entity.Staff;

public interface StaffMapper {
	/**
	 * ������Ա���ɾ��
	 * @param staffId
	 * @return
	 */
    int deleteByPrimaryKey(Integer staffId);
    /**
     * ��Ա�����
     * @param record
     * @return
     */
    int insert(Staff record);
    /**
     * ��Ա�����
     * @param record
     * @return
     */
    int insertSelective(Staff record);
    /**
     * ������Ա��Ų�ѯ
     * @param staffId
     * @return
     */
    Staff selectByPrimaryKey(Integer staffId);
    /**
     * ��Ա���޸�
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Staff record);
    /**
     * ��Ա���޸�
     * @param record
     * @return
     */
    int updateByPrimaryKey(Staff record);
}