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
import com.lwb.entity.Dimission;
import com.lwb.service.DimissionService;
import com.lwb.service.HireService;
import com.lwb.service.TransferService;

@Controller
@RequestMapping("/dimission")
public class DimissionController {
	/*
	 * 离职
	 * */
	/*跳转页面*/
	@Autowired
	private DimissionService ser;
	@Autowired
	private TransferService transferser;//调用人员
	@Autowired
	private HireService deptser;
	
	@RequestMapping("/finddimission.action")
	public String find0(){
		return "page/view/lwb/hr_lz";
	}
	
	@RequestMapping("/queryDimission")
	@ResponseBody
	public Map queryDimission(Integer page,Integer limit) {
		PageHelper.startPage(page,limit);
		List<Map> m=ser.queryDimission();
		PageInfo<Map> info=new PageInfo<Map>(m);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	
	@RequestMapping("/dimissionSave")
	public void dimissionSave(Dimission di,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int sid=ser.dimissionSave(di);
		ser.updaterecordStats4(di.getHrRecordId());
		if (sid>0) {
			out.print("添加成功");
		}else{
			out.print("添加失败");
		}
	}
	
	@RequestMapping("/dimissionById/{hr_dimission_id}")
	public String dimissionById(HttpServletRequest req,@PathVariable("hr_dimission_id") int hr_dimission_id){
		Map<String,Object> di=ser.dimissionById(hr_dimission_id);
		List<Map> d=deptser.seleDept();//部门下拉框绑定
		List<Map> record=transferser.queryrecord();
		req.setAttribute("di", di); 
		req.setAttribute("dept", d);
		req.setAttribute("reco", record);
		return "page/view/lwb/dimissionUpdate";
	}
	
	@RequestMapping("/updateDimission")
	public void updateDimission(Dimission di,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.updateDimission(di);	
		transferser.updateDept(di.getHrRecordId(), di.getDeptId());
		if (result!=0) {
			out.print("修改成功");
		}else {
			out.print("修改失败");
		}
	}
}
