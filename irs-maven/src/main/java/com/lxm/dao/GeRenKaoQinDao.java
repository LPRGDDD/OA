package com.lxm.dao;


import java.util.List;

import com.lxm.entity.GeRenEntity;
import com.lxm.entity.TbAdmin;

public interface GeRenKaoQinDao {
	/**
	 * ��ѯ������ԱId
	 * @param deptid ���ݲ��ŵ�id
	 * @return
	 */
  public GeRenEntity ShePiUser(int deptId);
  /**
   *������ԱId ��ѯ ��Ա����
   * @param array ��Աid����
   * @return
   */
  public List<TbAdmin> findAdminName(int[] array);
}
