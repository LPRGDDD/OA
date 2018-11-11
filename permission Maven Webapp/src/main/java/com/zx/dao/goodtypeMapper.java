package com.zx.dao;

import java.util.List;
import java.util.Map;

import com.zx.entity.good_type;
import com.zx.entity.goodtype;

public interface goodtypeMapper {
//	查询所有类别
	public List<Map> queryAll();
	//树形下拉框的查询
	public List<goodtype> findAll();
//	按仓库id查询
	public List<goodtype> findtype(int cId);
//	删除
	public List<goodtype> findtype2(int goId);
	
    public int deleteByPrimaryKey(int go_id);
//    录入
    public int insert(goodtype gt);
//    查询单个
    public List<Map> findone(int go_id);
//    分类查询
    public List<Map> findByid();
    
    public int updateone(good_type gt);

   
   
}