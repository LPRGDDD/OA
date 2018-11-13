package com.lpr.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lpr.entity.SalData;
import com.lpr.entity.SalaDataAndAdmin;
import com.lpr.entity.SalaDataSearch;
/**
 * 工资流程中的上报数据表
 * @author 刘培然
 *
 */
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
	public List<Map> findBySalaryFlowId(int sid,String nickname,Integer deptId,Integer start,Integer end);
	/**
	 * 批量录入
	 * @param userStr
	 * @param salaryflowIdStr
	 * @param list
	 * @return
	 */
	public int PLInsert(String userStr,String salaryflowIdStr,List<SalaDataAndAdmin> list);
}
