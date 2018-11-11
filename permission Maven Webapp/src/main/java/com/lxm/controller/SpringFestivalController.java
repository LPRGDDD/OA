package com.lxm.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxm.entity.SpringFestival;
import com.lxm.service.SpringFestivalService;

@Controller
@RequestMapping("/Festival")
public class SpringFestivalController {
	@Autowired
	private SpringFestivalService ss;
	/*页面跳转*/
	@RequestMapping("/festival.action")
	public String test() {
		return "page/view/lxm/MyJsp";
	}
	@RequestMapping("/findAll")
	@ResponseBody
	public Map<String,Object> findAll(int page,int limit){
		PageHelper.startPage(page,limit);
		List<Map<String, Object>> list=ss.findAll();
		PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	
	
	@RequestMapping("/save")
	@ResponseBody
	public int save(SpringFestival sf,HttpServletResponse response) throws IOException{
		response.resetBuffer();//重置输出流，清空上次遗留信息，防止报错
		response.setContentType("text/html;charset=utf-8");
		int id=ss.save(sf);
		return id;
	}
	@RequestMapping("/delete")
	@ResponseBody
	public void delete(int id) throws IOException{
		ss.delete(id);
	}
	//单元编辑更改
	@RequestMapping("/nihao")
	@ResponseBody
	public void save2(@RequestParam int id,@RequestParam String time,@RequestParam String timeEnd,@RequestParam String name,HttpServletResponse response) throws IOException{
		response.resetBuffer();//重置输出流，清空上次遗留信息，防止报错
		response.setContentType("text/html;charset=utf-8");
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("id",id);
		map.put("name", name);
		map.put("time", time);
		map.put("timeEnd", timeEnd);
		ss.update(map);
	}
	//更改节假日
	@RequestMapping("/updateAll")
	@ResponseBody
	public int updateAll(SpringFestival sf){
		System.out.println(sf.toString());
		int id=ss.updateSpringFestival(sf);
		return id;
	}
	@RequestMapping("/queryById/{sfId}")
	public String queryById(HttpServletRequest req, @PathVariable("sfId") int id){
		SpringFestival sfs=ss.updateSpring(id);
		req.setAttribute("sfs", sfs);
		return "page/view/lxm/SpringFestival";
	}
}
