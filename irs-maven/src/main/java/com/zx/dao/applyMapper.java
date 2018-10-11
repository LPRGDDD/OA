package com.zx.dao;

import java.util.List;
import java.util.Map;

import com.zx.entity.apply;
import com.zx.entity.shop;

public interface applyMapper {
	//分页查询
	public List<Map> getAll();
	//申领记录查询
	public List<Map> findAll();
	//插入
	public int insert(apply ap);
//    删除
	public int deleteapp(int ApId);
//	根据ID查询
	public List<Map> findById(int ApId);
//	根据状态查询已申请未批准
	public List<Map> findByState(int id);
//	根据状态查询
	public List<Map> findByState2();
//	根据状态查询detail
	public List<Map> findBydetail(int ApId);
	
	public List<Map> findByState3(int ApId);
//	修改库存
	public int updateNum(shop s);
//	修改状态
	public int updateState(int ApId);
//第二次修改状态 
	public int updateState1(int ApId);
//	根据id查申请记录
	public List<Map> findById2(int id);
//	根据id查申请记录
	public List<Map> findById3(int ApId);
//	录入拒绝批准理由
	public int insapp(apply a);
//	多条件查询
	public List<Map<String,Object> > findBycondition(Map<String,Object> map);
}