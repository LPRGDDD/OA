package com.lxm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxm.entity.Schedule;
import com.lxm.service.ScheduleService;
import com.lxm.service.TbDeptService;

@Controller
@RequestMapping("/schedule")
public class ScheduleController {
		@Autowired
		private ScheduleService ss;
		@Autowired
		private TbDeptService ts;
		
		/*页面跳转*/
		@RequestMapping("/Ban.action")
		public String test() {
			return "page/view/lxm/Schedule";
		}
		/*页面跳转*/
		@RequestMapping("/test.action")
		public String test1() {
			return "page/view/lxm/SpringFestival";
		}
		@RequestMapping("/save")
		@ResponseBody
		public int save(Schedule sd){
			int is=ss.insert(sd);
			return is;
		}
		@RequestMapping("/findAll")
		@ResponseBody
		public Map<String,Object> findAll(int page,int limit){
			PageHelper.startPage(page,limit);
			List<Map<String, Object>> list=ss.insertSelective();
			PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
			Map<String, Object> map = new HashMap<String, Object>();
	        map.put("code", 0);
	        map.put("msg", "");
	        map.put("count",info.getTotal());
	        map.put("data", info.getList());
			return map;
		}
		//排班查询 班次
		@RequestMapping("/BanCi")
		@ResponseBody
		public List<Map<String,Object>> findAllTwo(){
			List<Map<String, Object>> list=ss.insertSelective();
			return list;
		}
		@RequestMapping("/update")
		@ResponseBody
		public int update(Schedule s){
			/*Schedule s=new Schedule();
			s.setScid(scid);
			s.setSname(sname);
			s.setDuty_time1(dutyTime1);
			s.setDuty_time2(dutyTime2);
			s.setDuty_time3(dutyTime3);
			s.setDuty_time4(dutyTime4);*/
			int id=ss.updateByPrimaryKey(s);
			return id;
		}
		@RequestMapping("/delete")
		@ResponseBody
		public void delete(@RequestParam int scid){
			ss.deleteByPrimaryKey(scid);
			
		}
		//部门查询
		@RequestMapping("/tbDept")
		@ResponseBody
		public Map<String,Object> seleteDept(int page,int limit){
			PageHelper.startPage(page,limit);
			List<Map<String,Object>> list=ts.insertSelective();
			PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
			Map<String, Object> map = new HashMap<String, Object>();
	        map.put("code", 0);
	        map.put("msg", "");
	        map.put("count",info.getTotal());
	        map.put("data", info.getList());
			return map;
		}
		//查询单个班次
		@RequestMapping("/findById")
		@ResponseBody
		public List<Map<String,Object>> byId(int id){
			List<Map<String,Object>> list=ss.findBy(id);
			return list;
		}
		//查询单个班次 修改班次
				@RequestMapping("/findById/{scid}")
				public String ById(HttpServletRequest req,@PathVariable("scid")int id){
					Schedule list=ss.findById(id);
					req.setAttribute("sche", list);
					return "page/view/lxm/ScheduleUpdate";//
				}
}
