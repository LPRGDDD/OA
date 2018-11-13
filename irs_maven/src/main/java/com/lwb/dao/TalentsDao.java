package com.lwb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Talents;

public interface TalentsDao {

	     //分页查询所有，条件查询
	   public List<Map> queryAllrck(@Param("keyWord") String keyWord,@Param("major")String major,@Param("pname")String pname);
	   //查询计划
	   public List<Map<String, Object>> planAll();
	     //添加商品
	   public int saverck(Talents t);
	     //根据ID查询
	   public Map queryByIdrck(int id);
	     //修改
	   public int updaterck(Talents t);
	     //删除
	   public int deleterck(int id);
}
