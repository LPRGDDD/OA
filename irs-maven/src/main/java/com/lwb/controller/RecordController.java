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
import com.lwb.entity.Record;
import com.lwb.service.RecordService;
@Controller
@RequestMapping("/recoed")
public class RecordController {
	@Autowired
	private RecordService ser;
	
	
	/*��תҳ��*/
	@RequestMapping("/findrecord.action")
	public String find0(){
		return "page/view/lwb/hr_rsdagl";
	}
	
	@RequestMapping("/queryRecordById")
	@ResponseBody
	public Map queryRecord(int id){
		Map p=ser.queryRecord(id); 
		return p;
	}
	
	@RequestMapping("/RecordqueryAllrck")
	@ResponseBody
	public Map RecordqueryAllrck(Integer page,Integer limit) {
		PageHelper.startPage(page,limit);
		List<Map> list=ser.RecordqueryAllrck();
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	
	@RequestMapping("/recordById/{hr_talents_id}")
	public String recordById(HttpServletRequest req,@PathVariable("hr_talents_id")int hr_talents_id){
		Map list=ser.recordById(hr_talents_id);
		req.setAttribute("talent", list);
		return "page/view/lwb/hr_recordSave";
	}
	@RequestMapping("/saveRecord")
	public void saveRecord(HttpServletResponse response,Record r) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int id=ser.saveRecord(r);
		ser.updateStats5(r.getHrTalentsId());
		if (id>0) {
			out.print("��ӳɹ�");
		} else {
			out.print("���ʧ��");
		}
	}
	//��ѯ����
	@RequestMapping("/seleDept")
	@ResponseBody
	public List<Map> seleDept(){
		List<Map> list=ser.seleDept();
		return list;
	}
	//��ѯ����
	@RequestMapping("/seleroles")
	@ResponseBody
	public List<Map> seleroles(){
		List<Map> list=ser.seleroles();
		return list;
	}
	//�޸ĵ�����Ϣ
	@RequestMapping("/updateRecord")
	public void updateRecord(Record r,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.updateRecord(r);
		System.out.println(r);
		System.out.println(result);
		if (result!=0) {
			out.print("�޸ĳɹ�");
		}else {
			out.print("�޸�ʧ��");
		}
	}
}
