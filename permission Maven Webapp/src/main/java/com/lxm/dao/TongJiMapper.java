package com.lxm.dao;

import com.lxm.entity.TongJi;

public interface TongJiMapper {
   /**
    * 添加考勤统计
    * @param t
    * @return
    */
	public int insert(TongJi t);
	/**
	 * 查看是否有重复添加
	 * @param id
	 * @return
	 */
	public int selectId(int id);
}