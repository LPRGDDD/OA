package com.lpr.service;

import java.util.List;
import java.util.Map;

import com.lpr.entity.Dept;

public interface DeptService {
	/**
	 * 部门表的查询
	 * @return
	 */
	public List<Map<String, Object>> findAll();
	/**
	 * 	根据部门编号进行分页查询
	 * @param deptId
	 * @return
	 */
	List<Map> findUser(Integer deptId);
	public List<Map> findAllUser();
	public List<Dept> findDept();
}
