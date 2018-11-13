package com.lxm.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lxm.dao.PbjlMapper;
import com.lxm.entity.Pbjl;
import com.lxm.service.PbjlMapperService;
@Service
public class PbjlMapperServiceImpl implements PbjlMapperService {
		@Autowired
		private PbjlMapper pm;
	public List<Map<String,Object>> selectAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
