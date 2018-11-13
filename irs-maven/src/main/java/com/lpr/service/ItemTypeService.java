package com.lpr.service;

import java.util.List;
import java.util.Map;

import com.lpr.entity.ItemType;
/**
 * 薪酬项目类型表
 * @author 刘培然
 *
 */
public interface ItemTypeService {
	/**
	 * 薪酬项目类型表的查询
	 * @return
	 */
	public List<Map<String, Object>> findAll();
	/**
	 * 薪酬项目类型表的添加
	 * @param itemtype
	 * @return
	 */
	public int insert(ItemType itemtype);
}
