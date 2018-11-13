package com.lwb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Hire;



public interface HireDao {
	   //分页查询所有
	   public List<Map> queryHire(@Param("jhmc") String jhmc,@Param("ypzxm")String ypzxm,@Param("ypgw")String ypgw);
	   //添加商品
	   public int saveHire(Hire h);
	   //根据ID查询
	   public Map planById(int id);
	   //修改
	   public int updateHire(Hire h);

	   
	   
	   //查询筛选成功的计划
	   public List<Map> hireSePl();
	   //查询计划内人员
	   public List<Map> hireSeTa(int id);
	   //查询计划内人员及数据，并把数据赋予页面
	   public List<Map> hTalentId(int id);
	   //查询部门
	   public List<Map> seleDept();
	   //修改状态
	   public int updateStats4(int id);
}
