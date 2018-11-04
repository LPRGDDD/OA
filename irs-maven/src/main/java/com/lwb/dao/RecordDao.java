package com.lwb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Record;


public interface RecordDao {
	   //分页查询所有
	   public List<Map> queryRecord(@Param("keyWord") String keyWord);
	   //添加商品
	   public int saveRecord(Record h);
	   //根据ID查询
	   public Map recordById(int id);
	   //修改
	   public int updateRecord(Record h);
	   //删除
	   public int deleteRecord(int id);
	   
	  
}
