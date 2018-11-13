package com.lpr.dao;

import com.lpr.entity.Staff;

public interface StaffMapper {
	/**
	 * 根据人员编号删除
	 * @param staffId
	 * @return
	 */
    int deleteByPrimaryKey(Integer staffId);
    /**
     * 人员表添加
     * @param record
     * @return
     */
    int insert(Staff record);
    /**
     * 人员表添加
     * @param record
     * @return
     */
    int insertSelective(Staff record);
    /**
     * 根据人员编号查询
     * @param staffId
     * @return
     */
    Staff selectByPrimaryKey(Integer staffId);
    /**
     * 人员表修改
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Staff record);
    /**
     * 人员表修改
     * @param record
     * @return
     */
    int updateByPrimaryKey(Staff record);
}