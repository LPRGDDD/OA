package com.lpr.controller;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lpr.entity.SalaryFlow;
import com.lpr.service.SalaryFlowService;
/**
 * 工资流程
 * 
 */
@Controller
@RequestMapping("/salaryflow")
public class SalaryFlowController {
	/*自动注入*/
	@Autowired
	private SalaryFlowService service;
	/*页面跳转*/
	@RequestMapping("/find.action")
	public String find(){
		return "page/view/lpr/SalaryFlow";
	}
	//工资流程表的添加方法（新建工资流程）
	@RequestMapping("/insert")
	@ResponseBody
	public void insert(SalaryFlow salaryFlow,HttpServletRequest request,HttpServletResponse response) throws IOException{
		System.out.println("添加："+salaryFlow);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int result=service.insert(salaryFlow);
		if (result!=0) {
			out.print("添加成功！");
		}else{
			out.print("添加失败！");
		}
	}
	//工资流程表的查询方法
	@RequestMapping("findAll")
	public @ResponseBody Map findAll(Integer page,Integer limit) {
		PageHelper.startPage(page,limit);
		List<Map> list=service.findAll(null, null);
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	//工资流程表的编辑
		@RequestMapping(value="update",method=RequestMethod.POST)
		@ResponseBody
	    public void update(SalaryFlow salaryflow,HttpServletResponse response) throws IOException{
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			int result=service.update(salaryflow);
			if (result!=0) {
				out.print("修改成功！！！");
			}else{
				out.print("修改失败！！！");
			}
	    }
	  //工资流程表的删除
		@RequestMapping("delete")
	    public void delete(int salaryflowId,HttpServletResponse response) throws IOException{
	    	response.setContentType("text/html;charset=utf-8");
	    	PrintWriter out=response.getWriter();
	    	 int result=service.delete(salaryflowId);
	    	 if(result!=0){
	   		   out.print("删除成功！！！");
	   	   }else{
	   		   out.print("删除失败！！！");
	   	   }
	    }
	  //工资流程表编辑之前的查询
	    @RequestMapping("/selectByPrimaryKey/{salaryflow_id}")
	   public String selectByPrimaryKey(HttpServletRequest req,@PathVariable("salaryflow_id") int salaryflow_id){
	    	System.out.println(salaryflow_id);
	    	SalaryFlow sf=service.findById(salaryflow_id);
	    	System.out.println(sf);
	    	req.setAttribute("sf", sf);
			return "page/view/lpr/SalaryFlowUpdate";
	    }
	    //状态的修改
	    @RequestMapping("/setXcStatus")
	    @ResponseBody
	    public void setXcStatus(SalaryFlow salaryflow,HttpServletResponse response) throws IOException{
	    	response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			int result=service.setXcStatus(salaryflow);
			if (result!=0) {
				out.print("ok");
			}else{
				out.print("修改失败！！！");
			}
	    }
}
