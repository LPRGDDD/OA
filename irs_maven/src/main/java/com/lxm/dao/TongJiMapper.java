package com.lxm.dao;

import com.lxm.entity.TongJi;

public interface TongJiMapper {
   /**
    * ��ӿ���ͳ��
    * @param t
    * @return
    */
	public int insert(TongJi t);
	/**
	 * �鿴�Ƿ����ظ����
	 * @param id
	 * @return
	 */
	public int selectId(int id);
}