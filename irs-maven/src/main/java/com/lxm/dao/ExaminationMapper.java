package com.lxm.dao;

import java.util.List;
import java.util.Map;

import com.lxm.entity.Examination;

public interface ExaminationMapper {
	/**
	 * 添加审批规则表
	 * @param record 审批规则表
	 * @return
	 */
    public int insert(Examination record);
/**
 * 查询审批规则表
 * @return
 */
    public List<Map<String,Object>> selectByPrimaryKey();
    /**
     * 
     * @param id 根据Id查询一条审批规则
     * @return
     */
    public Examination selectById(int id);
    /**
     * 修改
     * @param e
     * @return
     */
    public int update(Examination e);
    /**
     * 删除
     * @param id
     * @return
     */
    public int delete(int id);
    
    
}