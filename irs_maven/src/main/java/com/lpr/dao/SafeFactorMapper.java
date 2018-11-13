package com.lpr.dao;

import java.util.List;
import java.util.Map;

import com.lpr.entity.SafeFactor;

public interface SafeFactorMapper {
	/**
	 * 根据保险系数编号删除
	 * @param safefactorId保险系数编号
	 * @return
	 */
    int deleteByPrimaryKey(Integer safefactorId);
    /**
     * 保险系数表添加
     * @param record
     * @return
     */
    int insert(SafeFactor record);
    /**
     * 保险系数表添加
     * @param record
     * @return
     */
    int insertSelective(SafeFactor record);
    /**
     * 根据保险系数编号查询
     * @param safefactorId保险系数编号
     * @return
     */
    SafeFactor selectByPrimaryKey(Integer safefactorId);
    /**
     * 保险系数表修改
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(SafeFactor record);
    /**
     * 保险系数表修改
     * @param record
     * @return
     */
    int updateByPrimaryKey(SafeFactor record);
    /**
     * 保险系数查询所有
     * @return
     */
    public List<Map<String, Object>> findAll();
}