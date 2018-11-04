package com.lpr.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lpr.entity.SalData;

public interface SalDataService {
	/**
	 * 根据状态（1,0）进行分页查询
	 * @return
	 */
	public List<Map> findByStatus();
	public List<Map> findByStatus1();
	public int insert(SalData s,String userId);
	/**
	 * 根据流程表id查询上报数据
	 * @param sid
	 * @return
	 */
	public List<Map> findBySalaryFlowId(int sid);
}
