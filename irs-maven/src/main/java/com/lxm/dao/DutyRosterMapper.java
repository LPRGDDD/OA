package com.lxm.dao;

import java.util.List;
import java.util.Map;

import com.lxm.entity.DutyRoster;
import com.lxm.entity.Pbjl;

public interface DutyRosterMapper {
	
	public List<Pbjl> selectLxm(Map<String,Object> map);
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
	
	/**
	 * 查询排班班次信息
	 * @return
	 */
	public List<Map<String,Object>> qeruyAll();
	/**
	 * 考勤统计
	 * @param map
	 * @return
	 */
	public List<Map<String,Object>> KaoQinTongJi(Map<String,Object> map);
	/**
	 * 全部查询  考情统计
	 * @return
	 */
	public List<Map<String,Object>> selectTongji();
}