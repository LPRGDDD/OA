package com.lxm.service;

import java.util.List;
import java.util.Map;

import com.lxm.entity.SpringFestival;

public interface SpringFestivalService {
	public List<Map<String,Object>> findAll();

	public int save(SpringFestival sf);

	public int delete(int id);
/**
 * ��Ԫ��༭
 * @param map
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
