package com.lwb.dao;

import java.util.Map;


import com.lwb.entity.Record;


public interface RecordDao {
	   //根据ID查询
	   public Map queryRecord(int id);
	   //添加商品
	   public int saveRecord(Record h);
	   //根据ID查询
	   public Map recordById(int id);
	   //修改
	   public int updateRecord(Record h);
	   //删除
	   public int deleteRecord(int id);
	   
	  
}
