package com.lwb.service;

import java.util.List;
import java.util.Map;

import com.lwb.entity.Talents;

public interface TalentsService {
	    //分页查询所有
	    public List<Map> queryAllrck(String keyWord,String major,String pname);
	    //查询计划
	    public List<Map<String, Object>> planAll();
	    //添加商品
	    public int saverck(Talents t);
	    //根据ID查询
	    public Map queryByIdrck(int id);
	    //修改
	    public int updaterck(Talents t);
	    //删除
	    public int deleterck(int id);
	    
}
