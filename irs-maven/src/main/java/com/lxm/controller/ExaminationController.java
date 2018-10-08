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
import com.lxm.entity.Examination;
import com.lxm.service.ExaminationService;
import com.lxm.service.TbUseService;

@Controller
@RequestMapping("/exam")
public class ExaminationController {
	@Autowired
	private TbUseService ts;
	@Autowired
	private ExaminationService es;
	/*页面跳转*/
	@RequestMapping("/Exam.action")
	public String test() {
		return "page/view/lxm/Exam";
	}
	//查询审批人员
	@RequestMapping("/tbuser")
	@ResponseBody
	public Map<String,Object> selectTbUse(int page,int limit){
		PageHelper.startPage(page,limit);
		List<Map<String,Object>> list=ts.selectByPrimaryKey();
		PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	@RequestMapping("/saveEx")
	@ResponseBody
	public int save(Examination ex){
		int id=es.insert(ex);
		return id;
	}
	@RequestMapping("/update")
	@ResponseBody
	public int update(Examination e){
		int id=es.update(e);
		return id;
	}
	@RequestMapping("/delete")
	@ResponseBody
	public int delete(int id){
		int num=es.delete(id);
		return num;
	}
	@RequestMapping("/query")
	@ResponseBody
	public Map<String,Object> findAll(int page,int limit){
		PageHelper.startPage(page,limit);
		List<Map<String,Object>> list=es.selectByPrimaryKey();
		PageInfo<Map<String,Object>> info=new PageInfo<Map<String, Object>>(list);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	@RequestMapping("/ById/{exId}")
	public String queryById(HttpServletRequest req,@PathVariable("exId") int exId){
		Examination exam=es.selectById(exId);
		req.setAttribute("exama", exam); 
		return "page/view/lxm/editExam";
	}
}
