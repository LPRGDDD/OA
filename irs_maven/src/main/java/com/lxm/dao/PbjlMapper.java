package com.lxm.dao;

import java.util.List;
import java.util.Map;

import com.lxm.entity.DutyRoster;
import com.lxm.entity.Pbjl;

public interface PbjlMapper {
   /**
    * 添加排班记录
    * @param p
    * @return
    */
	public int insertAll(Pbjl p);
	/**
	 * 根据人员查询打卡记录
	 * @param id 人员Id
	 * @return
	 */
	//public List<Pbjl> selectQuery(Map<String,Object> map);
	/**
	 * 判断是否重复
	 * @param p
	 * @return
	 */
	public int selectPan(DutyRoster dr);
}