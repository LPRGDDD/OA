package com.lxm.service;

import java.util.List;
import java.util.Map;

import com.lxm.entity.SpringFestival;

public interface SpringFestivalService {
	public List<Map<String,Object>> findAll();

	public int save(SpringFestival sf);

	public int delete(int id);
/**
 * 单元格编辑
 * @param map
 * @return
 */
	public int update(Map<String,Object> map);
	/**
	 * 根据Id查询 节假日
	 * @param id
	 * @return
	 */
	public SpringFestival updateSpring(int id);
	/**
	 * 更改节假日 
	 * @param sf
	 * @return
	 */
	public int updateSpringFestival(SpringFestival sf);
}
