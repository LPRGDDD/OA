package com.lwb.dao;

import java.util.List;

import com.lwb.entity.Dept;

public interface DeptDao {
	/*
	 * 根据ID查询在职人员
	 * */
	public List<Dept> queryDept0();
	/*
	 * 根据ID查询离职人员
	 * */
	public List<Dept> queryDept4();
}
