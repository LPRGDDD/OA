package com.lpr.dao;

import java.util.List;
import java.util.Map;

import com.lpr.entity.ItemType;
/**
 * 薪酬项目类型表
 * @author 刘培然
 *
 */
public interface ItemTypeMapper {
	/**
	 * 根据薪酬项目类型编号删除
	 * @param itemtypeId薪酬项目类型编号
	 * @return
	 */
    int deleteByPrimaryKey(Integer itemtypeId);
    /**
     * 薪酬项目类型表添加
     * @param record
     * @return
     */
    int insert(ItemType itemtype);
    /**
     * 薪酬项目类型表添加
     * @param record
     * @return
     */
    int insertSelective(ItemType record);
    /**
     * 根据薪酬项目类型编号查询
     * @param itemtypeId薪酬项目类型编号
     * @return
     */
    ItemType selectByPrimaryKey(Integer itemtypeId);
    /**
     * 薪酬项目类型表修改
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(ItemType record);
    /**
     * 薪酬项目类型表修改
     * @param record
     * @return
     */
    int updateByPrimaryKey(ItemType record);
    /**
     * 薪酬项目类型表的查询
     * @return
     */
    public List<Map<String, Object>> findAll();
}