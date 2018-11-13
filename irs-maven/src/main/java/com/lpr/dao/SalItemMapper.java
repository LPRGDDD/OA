package com.lpr.dao;

import java.util.List;
import java.util.Map;

import com.lpr.entity.SalItem;
/**
 * 薪酬项目定义表
 * @author 刘培然
 *
 */
public interface SalItemMapper {
	/**
	 * 根据薪酬编号删除
	 * @param itemId薪酬编号
	 * @return
	 */
    int deleteByPrimaryKey(Integer itemId);
   /**
    * 薪酬项目定义表添加
    * @param record
    * @return
    */
    int insert(SalItem salitem);
    /**
     * 薪酬项目定义表添加
     * @param record
     * @return
     */
    int insertSelective(SalItem record);

    /**
     * 根据薪酬编号查询,编辑之前的查询
     * @param itemId薪酬编号
     * @return
     */
    SalItem selectByPrimaryKey(Integer itemId);

    /**
     * 薪酬项目定义表修改
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(SalItem record);
    /**
     *薪酬项目定义表 修改
     * @param record
     * @return
     */
    int updateByPrimaryKey(SalItem record);
    /**
     * 薪酬定义表的查询
     * @return
     */
    public List<Map<String, Object>> findAll();
    /**
     * 薪酬项目定义表的修改
     * @param salitem
     * @return
     */
    public int update(SalItem salitem);
    /**
     * 根据薪酬项目编号删除
     * @param itemId薪酬编号
     * @return
     */
    public int delete(int itemId);
}