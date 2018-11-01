package com.lwb.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Screen;

public interface ScreenDao {
	   //分页查询所有
	   public List<Map> queryScreen(@Param("keyWord") String keyWord,@Param("uid") Integer uid);
	   //查询计划
	   public List<Map> ptAll();
	   //查询计划内人员
	   public List<Map> ptAllId(int id);
	   //查询计划内人员，并把数据赋予页面
	   public List<Map> talentId(int id);
	   //查询用户表user中数据
	   public List<Map<String, Object>> userScreen();
	   
	   //新建筛选
	   public int ScreenSave(Screen s);
	   
	    //根据ID查询
	   public Map ScreenById(int id);
	   //修改
	   public int updateScreen(Screen s);
	   
	   //删除
	   public int deleteScreen(int id);
	   
	   
	   //修改状态
	   public int updateStats1(int id);
	   public int updateStats2(int id);
	   public int updateStats3(int id);
	   
}
