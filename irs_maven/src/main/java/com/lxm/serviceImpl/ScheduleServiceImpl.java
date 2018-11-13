package com.lxm.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lxm.dao.ScheduleMapper;
import com.lxm.entity.Schedule;
import com.lxm.service.ScheduleService;
@Service
public class ScheduleServiceImpl implements ScheduleService {
	@Autowired
	private ScheduleMapper sd;
	@Override
	public int deleteByPrimaryKey(Integer scid) {
		// TODO Auto-generated method stub
		return sd.deleteByPrimaryKey(scid);
	}

	@Override
	public int insert(Schedule record) {
		// TODO Auto-generated method stub
		return sd.insert(record);
	}


	@Override
	public int updateByPrimaryKey(Schedule record) {
		// TODO Auto-generated method stub
		return sd.updateByPrimaryKey(record);
	}

	@Override
	public List<Map<String, Object>> insertSelective() {
		// TODO Auto-generated method stub
		return sd.insertSelective();
	}

	@Override
	public List<Map<String,Object>> findBy(int id) {
		// TODO Auto-generated method stub
		return sd.findBy(id);
	}

	@Override
	public Schedule findById(int scid) {
		// TODO Auto-generated method stub
		return sd.findById(scid);
	}

}
