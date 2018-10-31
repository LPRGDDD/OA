package com.lwb.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Plan;
public interface PlanService {

	//分页查询所有
	   public List<Map> queryPlan(@Param("keyWord") String keyWord);
	   //添加商品
	   public int savePlan(Plan p);
	   //查询user中数据
	   public List<Map<String, Object>> userAll();
	    //根据ID查询
	   public Map planById(int id);
	   //修改
	   public int updatePlan(Plan p);
	   //删除
	   public int deletePlan(int id);
	   
	 //根据状态0查询
	   public List<Map> fianAll0(@Param("keyWord") String keyWord);
	   //根据状态1查询
	   public List<Map> fianAll1(@Param("keyWord") String keyWord);
	   //根据状态2查询
	   public List<Map> fianAll2(@Param("keyWord") String keyWord);
	   //修改计划状态批准
	   public int updatestate1(int id);
	   //修改计划状态为不批准
	   public int updatestate2(int id);
	   
	   
}
