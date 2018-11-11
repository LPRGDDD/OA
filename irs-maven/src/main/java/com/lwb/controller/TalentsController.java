package com.lwb.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lwb.entity.Talents;
import com.lwb.service.TalentsService;

@Controller
@RequestMapping("/talent")
public class TalentsController {
	
	@Autowired
	private TalentsService ser;

	/*跳转页面*/
	@RequestMapping("/findtalent.action")
	public String find0(){
		return "page/view/lwb/hr_rckgl";
	}
	@RequestMapping("/queryAllrck")
	public @ResponseBody Map queryAllrck(Integer page,Integer limit) {
		PageHelper.startPage(page,limit);
		List<Map> list=ser.queryAllrck(null);
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	
	@RequestMapping("/planAll")
	@ResponseBody
	public List<Map<String,Object>> planAll(){
		List<Map<String,Object>> list=ser.planAll();
		return list;
	}
	
	@RequestMapping("/saverck")
	public void saverck(Talents t,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int id=ser.saverck(t);
		if (id>0) {
			out.print("添加成功");
		}else{
			out.print("添加失败");
		}
	}
	
	@RequestMapping("/queryByIdrck/{hr_talents_id}")
	public String queryByIdrck(HttpServletRequest req,@PathVariable("hr_talents_id")int hr_talents_id){
		Map list=ser.queryByIdrck(hr_talents_id);
		req.setAttribute("rck", list);
		return "page/view/lwb/rckUpdate";
	}
	

	@RequestMapping("/updaterck")
	public void updaterck(Talents t,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.updaterck(t);
		if (result!=0) {
			out.print("修改成功");
		}else {
			out.print("修改失败");
		}
	}
	
	/*根据ID删除人才库列*/
	@RequestMapping("/deleterck")
	@ResponseBody
	public void deleterck(int id,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.deleterck(id);
		if (result!=0) {
			out.print("删除成功");
		}else {
			out.print("删除失败");
		}
	}
}
