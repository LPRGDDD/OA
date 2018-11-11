package com.lwb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lwb.entity.Hire;

import com.lwb.service.HireService;

@Controller
@RequestMapping("/hire")
public class HireController {
	/*
	 * ��Ƹ¼��
	 * */
    @Autowired
    private HireService ser;
    
    /*��תҳ��*/
	@RequestMapping("/findhire.action")
	public String find(){
		return "page/view/lwb/hr_hire";
	}
	@RequestMapping("/queryHire")
	@ResponseBody
	public Map queryHire(Integer page,Integer limit) {
		PageHelper.startPage(page,limit);
		List<Map> list=ser.queryHire();
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	
    //��ѯ�ƻ�
    @RequestMapping("/hireSePl")
	@ResponseBody
	public List<Map> hireSePl(){
		List<Map> list=ser.hireSePl();
		return list;
	}
    //���ݼƻ���ѯ�ƻ�����Ա
	@RequestMapping("/hireSeTa")
	@ResponseBody
	public List<Map> hireSeTa(int id){
		List<Map> list=ser.hireSeTa(id);
		return list;
	}
	//������Ա��ѯ�����ݣ�����ʾ��ҳ����
	@RequestMapping("/hTalentId")
	@ResponseBody
	public List<Map> hTalentId(int id){
		List<Map> list=ser.hTalentId(id);
		return list;
	}
	   //��ѯ����
		@RequestMapping("/seleDept")
		@ResponseBody
		public List<Map> seleDept(){
			List<Map> list=ser.seleDept();
			return list;
		}
		
		
		@RequestMapping("/saveHire")
		public void saveHire(Hire h,HttpServletResponse response) throws IOException{
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			int sid=ser.saveHire(h);
			ser.updateStats4(h.getHrTalentsId());
			if (sid>0) {
				out.print("��ӳɹ�");
			}else{
				out.print("���ʧ��");
			}
		}
}
