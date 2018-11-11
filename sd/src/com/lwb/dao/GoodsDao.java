package com.lwb.dao;

import java.util.List;
import java.util.Map;

import com.lwb.entity.Goods;

public interface GoodsDao {
	//查询所有商品
   public List<Map<String, Object>> queryAll();
   //添加商品
   public int save(Goods g);
   //查询queryType中数据
   public List<Map<String, Object>> queryTypeAll();
   
   public List<Map<String, Object>> queryID(int id);
   //修改
   public int update(Goods g);
   //删除
   public int update();
   
   
}
