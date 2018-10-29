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
import com.lxm.entity.Examination;
import com.lxm.service.DutyRosterService;
@Controller
@RequestMapping("/duty")
public class DutyRoterController {
	@Autowired
	private DutyRosterService ds;
	@RequestMapping("/PaiBan.action")
	public String test(){
		return "page/view/lxm/PaiBan";
	}
	@RequestMapping("/save")
	@ResponseBody
	public int insert(DutyRoster record){
		int id=ds.insert(record);
		return id;
	}
	@RequestMapping("/select")
	@ResponseBody
	public Map<String,Object> selectAll(int page,int limit){
		PageHelper.startPage(page,limit);
		List<Map<String,Object>> list=ds.selectByPrimaryKey();
		PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	@RequestMapping("/delete")
	@ResponseBody
	public int delete(int id){
		int num=ds.deleteByPrimaryKey(id);
		return num;
	}
	@RequestMapping("/update")
	@ResponseBody
	public int update(int id,int state){
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("id", id);
		map.put("state", state);
		int  num=ds.updateState(map);
		
		return num;
	}
	@RequestMapping("/updateById/{drId}")
	public String selectID(HttpServletRequest req,@PathVariable("drId") int id){
		DutyRoster list= ds.selectById(id);
		System.out.println(list.getDtdateStart()+list.getDtdateEnd());
		System.out.println(list.getDrnameId()+list.getDrname1());
		System.out.println(list.getDrnameId2()+list.getDrname2());
		req.setAttribute("list", list); 
		//Map map=new HashMap();
		//map.put("dd", list);
		return "page/view/lxm/PaiBanUpdate";
	}
	@RequestMapping("/updateDutyAll")
	@ResponseBody
	public int updateDro(DutyRoster duty){
		int id=ds.updateRoter(duty);
		return id;
	}
}
