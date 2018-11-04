package com.lpr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import com.lpr.entity.PersonXc;

public interface PersonXcMapper {
	/**
	 * 根据员工薪酬基数编号 删除 
	 * @param personxcId员工薪酬基数编号
	 * @return
	 */
    int deleteByPrimaryKey(Integer personxcId);
    /**
     * 员工薪酬基数设置表添加
     * @param record
     * @return
     */
    int insert(PersonXc record);
    /**
     * 员工薪酬基数设置表添加
     * @param record
     * @return
     */
    int insertSelective(PersonXc record);
    /**
     * 根据员工薪酬基数编号查询
     * @param personxcId员工薪酬基数编号
     * @return
     */
    PersonXc selectByPrimaryKey(Integer personxcId);
    /**
     * 员工薪酬基数设置表修改
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(PersonXc record);
    /**
     * 员工薪酬基数设置表修改
     * @param record
     * @return
     */
    int updateByPrimaryKey(PersonXc record);
    /**
     * 根据用户ID查询当前用户薪酬基数
     * @param userId
     * @return
     */
    public List<Map<String, Object>> findAll(Integer userId);
    /**
     * 员工薪酬基数的分页查询
     * @param keyWord
     * @param userName
     * @return
     */
    public List<Map> findPage();
    /**
     * 根据员工编号查询员工工资是否存在
     * @param id
     * @return
     */
    //@Select("select personxc_id from tb_personxc where tb_personxc.id=#{id}")
    public int findById(@Param("id")long id);
    /**
     * 根据ID查询一个表的数据
     * @param uid
     * @return
     */
    public List<Map> findByUid(@Param("uid")int uid);
}