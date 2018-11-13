package com.lxm.dao;

import java.util.List;
import java.util.Map;

import com.lxm.entity.SpringFestival;

public interface SpringFestivalDao {
	/**
	 * 
	 * @return
	 */
	public List<Map<String,Object>> findAll();
	/**
	 * 
	 * @param sf �ڼ���ʵ����
	 * @return
	 */
	public int save(SpringFestival sf);
	/**
	 * 
	 * @param id id��ѯ
	 * @return
	 */
	public int delete(int id);
	/**
	 * 
	 * @param map ��Žڼ���ID name time timeEnd
	 * @return
	 */
	public int update(Map<String,Object> map);
	/**
	 * ����Id��ѯ �ڼ���
	 * @param id
	 * @return
	 */
	public SpringFestival updateSpring(int id);
	/**
	 * ���Ľڼ��� 
	 * @param sf
	 * @return
	 */
	public int updateSpringFestival(SpringFestival sf);
}
