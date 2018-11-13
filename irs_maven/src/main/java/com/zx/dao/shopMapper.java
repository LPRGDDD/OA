package com.zx.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zx.entity.shop;

public interface shopMapper {
	//根据名称查询
	public List<shop> findById(int sId);
//	树状查询所有
	public List<shop> findAll();
//	修改商品信息
	public int updateshop(shop s);
//	录入
	public int addshop(shop s);
//	根据goID查询商品
	public List<shop> findshop(int goId);
//	模糊查询
	public List<Map<String,Object>> findvag(Map<String,Object> map);
//根据编号

}