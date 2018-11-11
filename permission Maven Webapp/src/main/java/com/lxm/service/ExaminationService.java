package com.lxm.service;

import java.util.List;
import java.util.Map;

import com.lxm.entity.Examination;

public interface ExaminationService {
	 public int insert(Examination record);
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
