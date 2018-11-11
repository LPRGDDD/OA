package com.lwb.dao;

import java.util.List;

import com.lwb.entity.Dept1;

public interface Dept1Dao {
	/*
	 * 根据ID查询在职人员
	 * */
	public List<Dept1> queryDept0();
	/*
	 * 根据ID查询离职人员
	 * */
	public List<Dept1> queryDept4();
}
