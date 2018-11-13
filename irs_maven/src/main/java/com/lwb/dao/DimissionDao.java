package com.lwb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Dimission;


public interface DimissionDao {
	    //分页查询所有
		public List<Map> queryDimission(@Param("name") String name,@Param("dept")String dept,@Param("leavetype")String leavetype);
		//新增人事调动信息
	    public int dimissionSave(Dimission di);
	    //根据ID查询
	    public Map dimissionById(int id);
	    //修改
	    public int updateDimission(Dimission di);
	    //修改人员状态为4(离职状态)
		public int updaterecordStats4(int id);
}
