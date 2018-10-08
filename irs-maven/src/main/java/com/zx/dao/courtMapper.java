package com.zx.dao;

import java.util.List;
import java.util.Map;

import com.zx.entity.court;

public interface courtMapper {
//	用品库查询所有
	public List<court> findAll();
	//用品库查询查询库名	
	public List<Map> findone();
}