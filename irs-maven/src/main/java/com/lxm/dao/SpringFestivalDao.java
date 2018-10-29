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
	 * @param sf 节假日实体类
	 * @return
	 */
	public int save(SpringFestival sf);
	/**
	 * 
	 * @param id id查询
	 * @return
	 */
	public int delete(int id);
	/**
	 * 
	 * @param map 存放节假日ID name time timeEnd
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
