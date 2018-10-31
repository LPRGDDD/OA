package com.lpr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lpr.entity.SalData;

public interface SalDataMapper {
	/**
	 * 根据工资上报编号删除
	 * @param salDataId工资上报编号
	 * @return
	 */
    int deleteByPrimaryKey(Integer salDataId);
    /**
     * 工资流程中的上报数据表添加
     * @param record
     * @return
     */
    int insert(SalData record);
    /**
     * 工资流程中的上报数据表添加
     * @param record
     * @return
     */
    int insertSelective(SalData record);
    /**
     * 根据工资上报编号查询
     * @param salDataId
     * @return
     */
    SalData selectByPrimaryKey(Integer salDataId);
    /**
     * 工资流程中的上报数据表修改
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(SalData record);
    /**
     * 工资流程中的上报数据表修改
     * @param record
     * @return
     */
    int updateByPrimaryKey(SalData record);
    /**
     * 根据状态（1,0）进行分页查询
     * @param keyWord
     * @param userName
     * @return
     */
    public List<Map> findByStatus();
}