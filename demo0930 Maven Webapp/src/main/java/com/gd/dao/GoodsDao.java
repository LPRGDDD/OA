package com.gd.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.gd.entity.*;

public interface GoodsDao {
    int deleteByPrimaryKey(Integer goodsid);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer goodsid);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
    
   public List<Map<String, Object>> findAll();
   
   public List<Map<String, Object>> mohuFind(@Param("goodsname") String goodsname);
   
   public int getCount();
   
   public List<Goods> pageFind(Map map);
}