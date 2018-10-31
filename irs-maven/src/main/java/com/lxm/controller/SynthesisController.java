package com.lxm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxm.entity.DutyRoster;
import com.lxm.entity.Synthesis;
import com.lxm.service.SynthesisService;

@Controller
@RequestMapping("/WaiChu")
public class SynthesisController {
	@Autowired
	private SynthesisService ss;
	@RequestMapping("/save")
	@ResponseBody
	public int save(Synthesis record){
		System.out.println(record.toString());
		int id=ss.insert(record);
		return id;
	}
	//查询外出登记
	@RequestMapping("/selectWai")
	@ResponseBody
	public Map<String,Object> select(int page,int limit,int id){
		PageHelper.startPage(page,limit);
		List<Map<String,Object>> list=ss.selectAll(id);
		PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("code",0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	//修改外出登记 iD查询
	@RequestMapping("/WaiSel/{sId}/{id}")
	public String updateSel(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id){
		System.out.println(id+"r人员Id"+sId+"审批人");
		Map<String,Object> list=ss.selectUpdate(id,sId);
		req.setAttribute("list", list); 
		return "page/view/lxm/WaiUpdate";
	}
	
	//修改外出登记
	@RequestMapping("/updateWai")
	@ResponseBody
	public int updateWai(Synthesis sy){
		System.out.println("进来");
		System.out.println(sy.getSyreason()+sy.getWctime());
		int id=ss.updateWai(sy);
		return id;
	}
	//删除外出记录
	@RequestMapping("/deleteWai")
	@ResponseBody
	public int delete(int id){
		int num=ss.delete(id);
		return num;
	}
	//查询待审批外出、请假、加班、出差
	@RequestMapping("/DaiShenPi")
	public Map<String,Object> selectDaiShen(int page,int limit,int id){
		PageHelper.startPage(page,limit);
		List<Map<String,Object>> list=ss.selectDaiShen(id);
		PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("code",0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
}
