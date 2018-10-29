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
     * ����id��ѯ ��α�
     * @param id
     * @return
     */
    public List<Map<String,Object>> findBy(int id);
    /**
     * �޸�ǰ�Ĳ�ѯ
     * @param scid
     * @return
     */
    public Schedule findById(int scid);
}
