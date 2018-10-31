package com.lpr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lpr.entity.Dept;

public interface DeptMapper {
	/**
	 * 根据部门编号删除
	 * @param deptId部门编号
	 * @return
	 */
    int deleteByPrimaryKey(Integer deptId);
    /**
     * 部门表的添加
     * @param record
     * @return
     */
    int insert(Dept record);
    /**
     * 部门表的添加
     * @param record
     * @return
     */
    int insertSelective(Dept record);
    /**
     * 根据部门编号查询
     * @param deptId部门编号
     * @return
     */
    Dept selectByPrimaryKey(Integer deptId);
    /**
     * 部门表的修改
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Dept record);
    /**
     * 部门表的修改
     * @param record
     * @return
     */
    int updateByPrimaryKey(Dept record);
    /**
     * 部门表的全部查询
     * @return
     */
    public List<Map<String, Object>> findAll();
    /**
     * 根据部门编号进行分页查询
     * @param deptId
     * @return
     */
    public List<Map> findUser(@Param("deptId") Integer deptId);
}