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
 * ��������
 * 
 */
@Controller
@RequestMapping("/salaryflow")
public class SalaryFlowController {
	/*�Զ�ע��*/
	@Autowired
	private SalaryFlowService service;
	/*ҳ����ת*/
	@RequestMapping("/find.action")
	public String find(){
		return "page/view/lpr/SalaryFlow";
	}
	//�������̱����ӷ������½��������̣�
	@RequestMapping("/insert")
	@ResponseBody
	public void insert(SalaryFlow salaryFlow,HttpServletRequest request,HttpServletResponse response) throws IOException{
		System.out.println("��ӣ�"+salaryFlow);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int result=service.insert(salaryFlow);
		if (result!=0) {
			out.print("��ӳɹ���");
		}else{
			out.print("���ʧ�ܣ�");
		}
	}
	//�������̱�Ĳ�ѯ����
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
	//�������̱�ı༭
		@RequestMapping(value="update",method=RequestMethod.POST)
		@ResponseBody
	    public void update(SalaryFlow salaryflow,HttpServletResponse response) throws IOException{
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			int result=service.update(salaryflow);
			if (result!=0) {
				out.print("�޸ĳɹ�������");
			}else{
				out.print("�޸�ʧ�ܣ�����");
			}
	    }
	  //�������̱��ɾ��
		@RequestMapping("delete")
	    public void delete(int salaryflowId,HttpServletResponse response) throws IOException{
	    	response.setContentType("text/html;charset=utf-8");
	    	PrintWriter out=response.getWriter();
	    	 int result=service.delete(salaryflowId);
	    	 if(result!=0){
	   		   out.print("ɾ���ɹ�������");
	   	   }else{
	   		   out.print("ɾ��ʧ�ܣ�����");
	   	   }
	    }
	  //�������̱�༭֮ǰ�Ĳ�ѯ
	    @RequestMapping("/selectByPrimaryKey/{salaryflow_id}")
	   public String selectByPrimaryKey(HttpServletRequest req,@PathVariable("salaryflow_id") int salaryflow_id){
	    	System.out.println(salaryflow_id);
	    	SalaryFlow sf=service.findById(salaryflow_id);
	    	System.out.println(sf);
	    	req.setAttribute("sf", sf);
			return "page/view/lpr/SalaryFlowUpdate";
	    }
	    //״̬���޸�
	    @RequestMapping("/setXcStatus")
	    @ResponseBody
	    public void setXcStatus(SalaryFlow salaryflow,HttpServletResponse response) throws IOException{
	    	response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			int result=service.setXcStatus(salaryflow);
			if (result!=0) {
				out.print("ok");
			}else{
				out.print("�޸�ʧ�ܣ�����");
			}
	    }
}
