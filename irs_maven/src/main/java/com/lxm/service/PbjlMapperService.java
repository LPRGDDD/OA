package com.lxm.service;

import java.util.List;
import java.util.Map;

import com.lxm.entity.Pbjl;

public interface PbjlMapperService {
	/**
	 *查看当前日期 的额班次考勤状况
	 * @param map
	 * @return
	 */
	public List<Map<String,Object>> selectAll(Map<String,Object> map);
}
