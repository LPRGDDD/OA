package com.lpr.service;

import java.util.List;
import java.util.Map;
/**
 * 保险系数表
 * @author 刘培然
 *
 */
public interface SafeFactorService {
	/**
	 * 保险系数表查询所有
	 * @return
	 */
	public List<Map<String, Object>> findAll();
}
