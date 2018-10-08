package com.zx.service;

import java.util.List;
import java.util.Map;

import com.zx.entity.good_type;
import com.zx.entity.goodtype;

public interface deptService2 {
	//树形下拉框的查询
  public List<Map> queryAll();
  //录入
  public int insert(goodtype gt);
  //删除
  public int delete(int go_id);
  //单个条件查询
  public List<Map> findone(int go_id);
  //修改
  public int updateone(good_type gt);
  
  public List<Map> findByid();
//  根据仓库查询类型
  public List<goodtype> findtype(int cId);
//  根据类型
  public List<goodtype> findtype2(int goId);
}
