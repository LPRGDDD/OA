package com.lxm.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lxm.dao.DutyRosterMapper;
import com.lxm.entity.DutyRoster;
import com.lxm.service.DutyRosterService;
@Service
public class DutyRosterServiceImpl implements DutyRosterService {
    @Autowired
    private DutyRosterMapper dm;
	@Override
	public int deleteByPrimaryKey(Integer drid) {
		// TODO Auto-generated method stub
		return dm.deleteByPrimaryKey(drid);
	}

	@Override
	public int insert(DutyRoster record) {
		// TODO Auto-generated method stub
		return dm.insert(record);
	}

	@Override
	public List<Map<String, Object>> selectByPrimaryKey() {
		// TODO Auto-generated method stub
		return dm.selectByPrimaryKey();
	}

	@Override
	public int updateState(Map<String,Object> map) {
		// TODO Auto-generated method stub
		return dm.updateState(map);
	}

	@Override
	public int updateDuty(DutyRoster duty) {
		// TODO Auto-generated method stub
		return dm.updateDuty(duty);
	}

	@Override
	public DutyRoster selectById(int id) {
		// TODO Auto-generated method stub
		return dm.selectById(id);
	}

	@Override
	public int updateRoter(DutyRoster dr) {
		// TODO Auto-generated method stub
		return dm.updateRoter(dr);
	}

}
