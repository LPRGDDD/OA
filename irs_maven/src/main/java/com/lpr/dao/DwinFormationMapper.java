package com.lpr.dao;

import java.util.List;
import java.util.Map;

import com.lpr.entity.DwinFormation;

public interface DwinFormationMapper {
	/**
	 * 根据单位信息编号删除
	 * @param dwinformationId单位信息编号
	 * @return
	 */
    int deleteByPrimaryKey(Integer dwinformationId);
    /**
     * 单位信息表添加
     * @param record
     * @return
     */
    int insert(DwinFormation record);
    /**
     * 单位信息表添加
     * @param record
     * @return
     */
    int insertSelective(DwinFormation record);
    /**
     * 根据单位信息编号查询
     * @param dwinformationId
     * @return
     */
    DwinFormation selectByPrimaryKey(Integer dwinformationId);
    /**
     * 单位信息表修改
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(DwinFormation record);
    /**
     * 单位信息表修改
     * @param record
     * @return
     */
    int updateByPrimaryKey(DwinFormation record);
    /**
     * 单位信息表查询
     * @return
     */
    public List<Map<String, Object>> findAll();
}