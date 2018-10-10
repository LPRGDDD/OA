package com.gd.dao;

import java.util.List;
import java.util.Map;

import com.gd.entity.*;

public interface GoodsTypeMapper {
    int deleteByPrimaryKey(Integer typeid);

    int insert(GoodsType record);

    int insertSelective(GoodsType record);

    GoodsType selectByPrimaryKey(Integer typeid);

    int updateByPrimaryKeySelective(GoodsType record);

    int updateByPrimaryKey(GoodsType record);
    
    List<Map<String, Object>> findAll();
}