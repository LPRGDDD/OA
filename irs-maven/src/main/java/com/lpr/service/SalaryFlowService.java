package com.lpr.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lpr.entity.SalItem;
import com.lpr.entity.SalaryFlow;
/**
 * 薪酬管理中的工资流程表
 * @author 刘培然
 *
 */
public interface SalaryFlowService {
	/**
	 * 新建工资流程（工资流程表的添加）
	 * @param salaryflowId工资流程编号
	 * @return
	 */
	public int insert(SalaryFlow sa);
	/**
	 * 工资流程表的查询
	 * @param map
	 * @return
	 */
	public List<Map> findAll(String keyWord,String userName);
	/**
	 * 工资流程表的修改
	 * @param salaryflow
	 * @return
	 */
	public int update(SalaryFlow salaryflow);
	/**
	 * 根据工资流程编号删除
	 * @param salaryflowId工资流程编号
	 * @return
	 */
    public int delete(int salaryflowId);
    /**
     * 工资流程编辑之前的查询
     * @param salaryflowId工资流程编号
     * @return
     */
    SalaryFlow selectByPrimaryKey(Integer salaryflowId);
    /**
     * 根据ID查询工资流程表
     * @param id
     * @return
     */
    public SalaryFlow findById(int id);
    /**
     * 修改状态
     * @param s
     * @return
     */
    public int setXcStatus(SalaryFlow s);
}
