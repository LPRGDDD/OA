package com.lpr.service;

import java.util.List;
import java.util.Map;

import com.lpr.entity.SalItem;

public interface SalItemService {
	
	/**
	 * 薪酬项目定义表查询
	 * @return
	 */
    public List<Map<String, Object>> findAll();
    /**
     * 薪酬项目定义表 添加
     * @param salitem
     * @return
     */
    public int insert(SalItem salitem);
    /**
     * 薪酬项目定义表的编辑
     * @param salitem
     * @return
     */
    public int update(SalItem salitem);
    /**
     * 根据薪酬项目编号删除
     * @param itemId薪酬项目编号
     * @return
     */
    public int delete(int itemId);
    /**
     * 薪酬项目定义表编辑之前的查询
     * @param itemId薪酬项目编号
     * @return
     */
    SalItem selectByPrimaryKey(Integer itemId);
}
