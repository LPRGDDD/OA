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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lwb.entity.Screen;
import com.lwb.service.ScreenService;
@Controller
@RequestMapping("/screen")
public class ScreenController {
	/*
	 * ��Ƹɸѡ
	 * */
	@Autowired
	private ScreenService ser;

	/*��תҳ��*/
	@RequestMapping("/findscreen.action")
	public String find0(){
		return "page/view/lwb/hr_zpsxgl";
	}
	
	@RequestMapping("/queryScreen")
	@ResponseBody
	public Map queryScreen(String keyWord,Integer uid,Integer page,Integer limit) {
		PageHelper.startPage(page,limit);
		List<Map> list=ser.queryScreen(keyWord, uid);
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	@RequestMapping("/ptAll")
	@ResponseBody
	public List<Map> ptAll(){
		List<Map> list=ser.ptAll();
		return list;
	}
	@RequestMapping("/ptAllId")
	@ResponseBody
	public List<Map> ptAllId(int id){
		List<Map> list=ser.ptAllId(id);
		return list;
	}
	
	@RequestMapping("/talentId")
	@ResponseBody
	public List<Map> talentId(int id){
		List<Map> list=ser.talentId(id);
		return list;
	}
	
	@RequestMapping("/ScreenSave")
	public void ScreenSave(Screen s,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int sid=ser.ScreenSave(s);
		ser.updateStats1(s.getHrTalentsId());
		if (sid>0) {
			out.print("��ӳɹ�");
		}else{
			out.print("���ʧ��");
		}
	}
	
	
	@RequestMapping("/userScreen")
	@ResponseBody
	public List<Map<String,Object>> userScreen(){
		List<Map<String,Object>> list=ser.userScreen();
		return list;
	}
	
	@RequestMapping("/ScreenById/{hr_screen_id}")
	public String ScreenById(HttpServletRequest req,@PathVariable("hr_screen_id")int hr_screen_id){
		Map list=ser.ScreenById(hr_screen_id);
		req.setAttribute("zpsx", list);
		return "page/view/lwb/zpsxUpdate";
	}
	
	//�޸�ɸѡ����ͬʱ�޸��˲�״̬Ϊͨ��
	@RequestMapping("/updateScreen2")
	public void updateScreen2(Screen s,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.updateScreen(s);
		ser.updateStats2(s.getHrTalentsId());
		if (result!=0) {
			out.print("�޸ĳɹ�");
		}else {
			out.print("�޸�ʧ��");
		}
	}
	//�޸�ɸѡ����ͬʱ�޸��˲�״̬Ϊδͨ��
	@RequestMapping("/updateScreen3")
	public void updateScreen3(Screen s,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.updateScreen(s);
		ser.updateStats3(s.getHrTalentsId());
		if (result!=0) {
			out.print("�޸ĳɹ�");
		}else {
			out.print("�޸�ʧ��");
		}
	}
	
	/*����IDɾ���˲ſ���*/
	@RequestMapping("/deleteScreen")
	public void deleteScreen(@RequestBody int id,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.deleteScreen(id);
		if (result!=0) {
			out.print("ɾ���ɹ�");
		}else {
			out.print("ɾ��ʧ��");	
		}
	}
}
