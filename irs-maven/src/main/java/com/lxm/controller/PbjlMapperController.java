package com.lxm.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxm.dao.DutyRosterMapper;
import com.lxm.dao.PbjlMapper;
import com.lxm.entity.Pbjl;
import com.lxm.service.PbjlMapperService;

@Controller
@RequestMapping("/pbjl")
public class PbjlMapperController {
	@Autowired
	private PbjlMapperService pms;
	@Autowired
	private PbjlMapper ps;
	@Autowired
	private DutyRosterMapper drm;
	@RequestMapping("/selectId")
	@ResponseBody
	public Map<String,Object> selectAll1(int page,int limit,int id,String date){
		PageHelper.startPage(page,limit);
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("date",date);
		if(date!=null && date==" "){
			String date1=date.substring(0,7);
			String test="-"+"01";//月的第一天
			String test1="-"+"31";//月的最后一天
			String date5=date1.concat(test);
			String date4=date1.concat(test1);
			map1.put("strat", date5);
			map1.put("end",date4);
			map1.put("id",id);
			List<Pbjl> list=drm.selectLxm(map1);
			PageInfo<Pbjl> info=new PageInfo<Pbjl>(list);
			Map<String, Object> map = new HashMap<String, Object>();
	        map.put("code",0);
	        map.put("msg","");
	        map.put("count",info.getTotal());
	        map.put("data", info.getList());
			return map;
		}else{
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	        String xi=df.format(new Date()); 
			String date1=xi.substring(0,7);
			String test="-"+"01";//月的第一天
			String test1="-"+"31";//月的最后一天
			String date5=date1.concat(test);
			String date4=date1.concat(test1);
			map1.put("strat", date5);
			map1.put("end",date4);
			map1.put("id",id);
			List<Pbjl> list=drm.selectLxm(map1);
			PageInfo<Pbjl> info=new PageInfo<Pbjl>(list);
			Map<String, Object> map = new HashMap<String, Object>();
	        map.put("code",0);
	        map.put("msg","");
	        map.put("count",info.getTotal());
	        map.put("data", info.getList());
			return map;
		}
	}
}
