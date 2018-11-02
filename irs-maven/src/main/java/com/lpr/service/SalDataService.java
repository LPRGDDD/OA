package com.lpr.service;

import java.util.List;
import java.util.Map;

import com.lpr.entity.SalData;

public interface SalDataService {
	/**
	 * 根据状态（1,0）进行分页查询
	 * @return
	 */
	public List<Map> findByStatus();
	public List<Map> findByStatus1();
	public int insert(SalData s,String userId);
}
