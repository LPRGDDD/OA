package com.lxm.service;


import java.util.List;

import com.lxm.entity.GeRenEntity;
import com.lxm.entity.TbAdmin;

public interface GeRenKaoQinService {
	/**
	 * ��ѯ������Ա
	 * @param deptId ���ݲ��ŵ�id
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
