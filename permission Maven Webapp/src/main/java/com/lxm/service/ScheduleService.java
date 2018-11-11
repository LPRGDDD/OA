package com.lxm.service;

import java.util.List;
import java.util.Map;

import com.lxm.entity.Schedule;

public interface ScheduleService {
	public int deleteByPrimaryKey(Integer scid);

    public int insert(Schedule record);

    public List<Map<String,Object>> insertSelective();

    public int updateByPrimaryKey(Schedule record);
    /**
     * 根据id查询 班次表
     * @param id
     * @return
     */
    public List<Map<String,Object>> findBy(int id);
    /**
     * 修改前的查询
     * @param scid
     * @return
     */
    public Schedule findById(int scid);
}
