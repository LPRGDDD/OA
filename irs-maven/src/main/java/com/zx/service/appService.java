package com.zx.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zx.entity.apply;
import com.zx.entity.shop;

public interface appService {
	//查询所有
   public List<Map> findAll();
   //录入
   public int insert(apply ap);
   //查询
   public List<Map> getAll();
   //删除
   public int deleteone(int ApId);
   //详情查询
   public List<Map> findById(int ApId);
//   已申请未审批
   public List<Map> findByState(int id);
//   状态查询2
   public List<Map> findByState2();
   
   public List<Map> findByState3(int ApId);
//   修改状态
   public int updateState(int ApId);
//   状态修改2
   public int updateState1(int ApId);
//   详情查询detail
   public List<Map> findBydetail(int ApId);
   //修改库存
   public int updateNum(shop s);
}
