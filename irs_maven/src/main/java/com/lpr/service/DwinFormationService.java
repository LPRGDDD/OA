package com.lpr.service;

import java.util.List;
import java.util.Map;

public interface DwinFormationService {
	/**
	 * 单位信息表的查询
	 * @return
	 */
	public List<Map<String, Object>> findAll();
}
