package com.lxm.dao;

import java.util.List;
import java.util.Map;

import com.lxm.entity.DutyRoster;

public interface DutyRosterMapper {
	/**
	 * 删除
	 * @param drid
	 * @return
	 */
	public int deleteByPrimaryKey(Integer drid);
	/**
	 * 修改 是否启用 的状态
	 * @param id
	 * @return
	 */
	public int updateState(Map<String,Object> map);
	/**
	 * 修改 排班 状态
	 * @return duty
	 */
	public int updateDuty(DutyRoster duty);
	/**
	 * 添加
	 * @param record  实体对象
	 * @return
	 */
	public int insert(DutyRoster record);

	/**
	 * 查询
	 * @param drid
	 * @return
	 */
	public List<Map<String,Object>> selectByPrimaryKey();
	/**
	 * 修改查询
	 * @param id
	 * @return
	 */
	public DutyRoster selectById(int id);
	/**
	 * 修改  排班
	 * @param dr
	 * @return
	 */
	public int updateRoter(DutyRoster dr);
}