package com.lxm.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lxm.dao.TbDeptMapper;
import com.lxm.service.TbDeptService;
@Service
public class TbDeptServiceImpl implements TbDeptService {

	@Autowired
	private TbDeptMapper tm;
	@Override
	public List<Map<String, Object>> insertSelective() {
		// TODO Auto-generated method stub
		return tm.selectByPrimaryKey();
	}

}
