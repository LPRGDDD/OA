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
   //查询分页的
   public List<Map> getAll(int id);
   //删除
   public int deleteone(int ApId);
   //详情查询
   public List<Map> findById(int ApId);
//   根据Id查询2
   public List<Map> findById2(int id);
// 根据Id查询2
 public List<Map> findById3(int ApId);
//   已申请未审批
   public List<Map> findByState();
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
//   录入拒绝理由
   public int insapp(apply a);
//   多条件查询
   public List<Map<String,Object>> findBycondition(Map<String,Object> map);
//   归还
   public List<Map> findByState4(int id);
//	查询 所有id下为归还商品
	public List<Map> findByState5(int id);
//	修改物品状态为4
	public int updateByState4(int ApId);
//	修改状态为5
	public int updateByState5(int ApId);
//	录入拒绝批准理由
	public int insappl(apply a);
}
