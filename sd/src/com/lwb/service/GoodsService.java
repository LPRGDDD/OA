package com.lwb.service;

import java.util.List;
import java.util.Map;

import com.lwb.entity.Goods;

public interface GoodsService {
	   List<Map<String, Object>> queryAll();
	   //ÃÌº”…Ã∆∑
	   public int save(Goods g);
	   //
	   public List<Map<String, Object>> queryTypeAll();
	   
	   public List<Map<String, Object>> queryID(int id);
}
