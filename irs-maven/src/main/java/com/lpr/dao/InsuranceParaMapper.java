package com.lpr.dao;

import com.lpr.entity.InsurancePara;

public interface InsuranceParaMapper {
	/**
	 * 根据上报信息设置编号删除
	 * @param insuranceParaId上报信息设置编号
	 * @return
	 */
    int deleteByPrimaryKey(Integer insuranceParaId);
    /**
     * 上报信息设置表添加
     * @param record
     * @return
     */
    int insert(InsurancePara record);
    /**
     * 上报信息设置表添加
     * @param record
     * @return
     */
    int insertSelective(InsurancePara record);
    /**
     * 根据上报信息设置编号查询
     * @param insuranceParaId上报信息设置编号
     * @return
     */
    InsurancePara selectByPrimaryKey(Integer insuranceParaId);
    /**
     * 上报信息设置表修改
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(InsurancePara record);
    /**
     * 上报信息设置表修改
     * @param record
     * @return
     */
    int updateByPrimaryKey(InsurancePara record);
}