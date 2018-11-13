package com.lpr.service;

import java.util.List;
import java.util.Map;

import com.lpr.entity.PersonXc;
/**
 * 员工薪酬基数设置表
 * @author 刘培然
 *
 */
public interface PersonXcService {
	/**
	 * 根据用户ID查询当前用户薪酬基数
	 * @return
	 */
	public List<Map<String, Object>> findAll(Integer userId);
	/**
	 * 员工酬薪的批量添加
	 * @return
	 */
	public int PLinsert(PersonXc p,String userId);
	/**
	 * 员工薪酬表的分页查询
	 * @param userId
	 * @return
	 */
	public List<Map> findPage();
	
	public List<Map> findByUid(Integer uid);
}
