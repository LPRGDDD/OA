package com.lpr.service;

import java.util.List;
import java.util.Map;

public interface SafeFactorService {
	/**
	 * 保险系数表查询所有
	 * @return
	 */
	public List<Map<String, Object>> findAll();
}
