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
	 * ��ѯ
	 * @return
	 */
	public List<JobWork> selectAll(int id);
	/**
	 * ���ڼ�¼�ж� �Ƿ�ȱ��
	 * @param map
	 * @return
	 */
	public int selectId(Map<String,Object> map);
	/**
	 * ���ھ���  �Ƿ� �ٵ� ���� 
	 * @param map
	 * @return
	 */
	public JobWork selectKaoqin(Map<String,Object> map);
}
