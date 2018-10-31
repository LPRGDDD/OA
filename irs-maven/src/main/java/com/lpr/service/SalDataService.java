package com.lpr.service;

import java.util.List;
import java.util.Map;

public interface SalDataService {
	/**
	 * 根据状态（1,0）进行分页查询
	 * @return
	 */
	public List<Map> findByStatus();
}
