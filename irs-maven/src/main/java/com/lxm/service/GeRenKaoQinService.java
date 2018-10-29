package com.lxm.service;

import java.util.Map;

public interface GeRenKaoQinService {
	/**
	 * 查询审批人员
	 * @param map 根据部门的id
	 * @return
	 */
  public Map<String,Object> ShePiUser(Map<String,Object> map);
}
