package com.lwb.service;

import java.util.List;
import java.util.Map;

import com.lwb.entity.Record;



public interface RecordService {
	   //根据ID查询
	   public Map queryRecord(int id);
	   //根据人才库状态查询已录用未建档人员
	   public List<Map> RecordqueryAllrck();
	   //根据ID查询人才库信息并赋值
	   public Map recordById(int id);
	   //查询部门
	   public List<Map> seleDept();
	   //查询角色
	   public List<Map> seleroles();
	   //建立档案
	   public int saveRecord(Record h);
	   //修改状态
	   public int updateStats5(int id);
	 //修改档案
	   public int updateRecord(Record r);
}
