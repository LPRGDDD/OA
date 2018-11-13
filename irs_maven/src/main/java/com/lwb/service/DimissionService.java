package com.lwb.service;

import java.util.List;
import java.util.Map;

import com.lwb.entity.Dimission;

public interface DimissionService {
	    //分页查询所有
		public List<Map> queryDimission();
		//新增人事调动信息
	    public int dimissionSave(Dimission di);
	    //根据ID查询
	    public Map dimissionById(int id);
	    //修改
	    public int updateDimission(Dimission di);
	    //修改人员状态为4(离职状态)
	  	public int updaterecordStats4(int id);
}
