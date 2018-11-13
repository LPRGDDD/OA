package com.lxm.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lxm.dao.TbUseMapper;
import com.lxm.service.TbUseService;
@Service
public class TbUseServiceImpl implements TbUseService {
	@Autowired
	private TbUseMapper tm;
	@Override
	public List<Map<String, Object>> selectByPrimaryKey() {
		// TODO Auto-generated method stub
		return tm.selectByPrimaryKey();
	}

}
