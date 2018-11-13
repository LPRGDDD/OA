package com.lwb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Transfer;

public interface TransferDao {
	//分页查询所有
	public List<Map> queryTransfer(@Param("name") String name,@Param("fertype")String fertype);
	//新增人事调动信息
    public int transferSave(Transfer tf);
    //根据部门查询人员
    public List<Map> recoById(int id);
    //查询员工信息
    public List<Map> queryrecord();
    //查询计划内人员及数据，并把数据赋予页面
	public List<Map> recordFZ(int id);
	//修改状态
	public int updateDept(@Param("id")int id,@Param("bm")int bm);
	//修改前查询
	public Map transferById(int id);
	//修改
	public int updateTransfer(Transfer tf);
}
