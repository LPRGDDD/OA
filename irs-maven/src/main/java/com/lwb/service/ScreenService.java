package com.lwb.service;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Screen;

public interface ScreenService {
	   //分页查询所有
	   public List<Map> queryScreen(@Param("keyWord") String keyWord);
	   //查询计划和用户信息
	   public List<Map> ptAll();
	   //查询计划人员
	   public List<Map> ptAllId(int id);
	 //查询计划人员
	   public List<Map> talentId(int id);
	   //添加商品
	   public int ScreenSave(Screen s);
	   //查询用户表user中数据
	   public List<Map<String, Object>> userScreen();
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
