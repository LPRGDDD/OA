package com.lpr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lpr.entity.SalaryFlow;
/**
 * 薪酬管理中的工资流程表
 * @author 刘培然
 *
 */
public interface SalaryFlowMapper {
	/**
	 * 根据工资流程编号删除
	 * @param salaryflowId工资流程编号
	 * @return
	 */
    int deleteByPrimaryKey(Integer salaryflowId);
    /**
     * 根据工资流程编号添加（新建工资流程）
     * @param record工资流程编号
     * @return
     */
    int insert(SalaryFlow sa);
    /**
     * 薪酬管理中的工资流程表添加
     * @param record
     * @return
     */
    int insertSelective(SalaryFlow record);
    /**
     * 根据工资流程表查询，修改之前的查询
     * @param salaryflowId工资流程编号
     * @return
     */
    SalaryFlow selectByPrimaryKey(Integer salaryflowId);
    /**
     * 薪酬管理中的工资流程表修改
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(SalaryFlow record);
    /**
     * 薪酬管理中的工资流程表修改
     * @param record
     * @return
     */
    int updateByPrimaryKey(SalaryFlow record);
    /**
     * 薪酬管理中的工资流程表的查询
     * 
     * 
     * @param map
     * @return
     */
    public List<Map> findAll(@Param("keyWord") String keyWord,@Param("userName")String userName);
    /**
     * 薪酬管理中工资流程的编辑
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
     * 根据编号id查询
     * @param id
     * @return
     */
    public SalaryFlow findById(@Param("id") int id);
    /**
     * 修改状态
     * @param s
     * @return
     */
    public int setXcStatus0(SalaryFlow s);
    public int setXcStatus1(SalaryFlow s);
}