package com.lxm.dao;


import java.util.List;

import com.lxm.entity.GeRenEntity;
import com.lxm.entity.TbAdmin;

public interface GeRenKaoQinDao {
	/**
	 * 查询审批人员Id
	 * @param deptid 根据部门的id
	 * @return
	 */
  public GeRenEntity ShePiUser(int deptId);
  /**
   *根据人员Id 查询 人员名字
   * @param array 人员id数组
   * @return
   */
  public List<TbAdmin> findAdminName(int[] array);
}
