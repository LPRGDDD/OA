package com.gd.service;

import java.util.List;
import java.util.Map;

import com.gd.entity.GoodsType;

public interface GoodsTypeService {

	int save(GoodsType gt);
	
	List<Map<String, Object>> findAll();
}
