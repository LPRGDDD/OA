package com.lpr.service;

import java.util.List;
import java.util.Map;

public interface DeptService {
	/**
	 * ���ű�Ĳ�ѯ
	 * @return
	 */
	public List<Map<String, Object>> findAll();
	/**
	 * 	���ݲ��ű�Ž��з�ҳ��ѯ
	 * @param deptId
	 * @return
	 */
	List<Map> findUser(Integer deptId);
	public List<Map> findAllUser();
}
