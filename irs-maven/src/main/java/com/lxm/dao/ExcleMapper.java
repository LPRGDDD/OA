package com.lxm.dao;

import java.util.List;
import java.util.Map;

import com.lxm.entity.JobWork;

public interface ExcleMapper {
	public Integer impusers(List<JobWork> impusers);
	
	public int insert(JobWork jk);
	
	
	public int updateByPrimaryKey(JobWork jk);
	
	public JobWork selectByPrimaryKey(int id);
	/**
	 * ²éÑ¯
	 * @return
	 */
	public List<JobWork> selectAll(int id);
	/**
	 * ¿¼ÇÚ¼ÇÂ¼ÅÐ¶Ï ÊÇ·ñÈ±ÇÚ
	 * @param map
	 * @return
	 */
	public int selectId(Map<String,Object> map);
	/**
	 * ¿¼ÇÚ¾ñÔñ  ÊÇ·ñ ³Ùµ½ ÔçÍË 
	 * @param map
	 * @return
	 */
	public JobWork selectKaoqin(Map<String,Object> map);
}
