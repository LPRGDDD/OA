package com.lxm.service;

import java.util.List;
import java.util.Map;

import com.lxm.entity.Pbjl;

public interface PbjlMapperService {
	/**
	 *�鿴��ǰ���� �Ķ��ο���״��
	 * @param map
	 * @return
	 */
	public List<Map<String,Object>> selectAll(Map<String,Object> map);
}
