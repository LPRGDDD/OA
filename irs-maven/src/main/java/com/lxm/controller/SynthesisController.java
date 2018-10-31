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
import com.lxm.entity.DutyRoster;
import com.lxm.entity.Synthesis;
import com.lxm.service.SynthesisService;

@Controller
@RequestMapping("/WaiChu")
public class SynthesisController {
	@Autowired
	private SynthesisService ss;
	@RequestMapping("/save")
	@ResponseBody
	public int save(Synthesis record){
		System.out.println(record.toString());
		int id=ss.insert(record);
		return id;
	}
	//��ѯ����Ǽ�
	@RequestMapping("/selectWai")
	@ResponseBody
	public Map<String,Object> select(int page,int limit,int id){
		PageHelper.startPage(page,limit);
		List<Map<String,Object>> list=ss.selectAll(id);
		PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("code",0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	//�޸�����Ǽ� iD��ѯ
	@RequestMapping("/WaiSel/{sId}/{id}")
	public String updateSel(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id){
		System.out.println(id+"r��ԱId"+sId+"������");
		Map<String,Object> list=ss.selectUpdate(id,sId);
		req.setAttribute("list", list); 
		return "page/view/lxm/WaiUpdate";
	}
	
	//�޸�����Ǽ�
	@RequestMapping("/updateWai")
	@ResponseBody
	public int updateWai(Synthesis sy){
		System.out.println("����");
		System.out.println(sy.getSyreason()+sy.getWctime());
		int id=ss.updateWai(sy);
		return id;
	}
	//ɾ�������¼
	@RequestMapping("/deleteWai")
	@ResponseBody
	public int delete(int id){
		int num=ss.delete(id);
		return num;
	}
	//��ѯ�������������١��Ӱࡢ����
	@RequestMapping("/DaiShenPi")
	public Map<String,Object> selectDaiShen(int page,int limit,int id){
		PageHelper.startPage(page,limit);
		List<Map<String,Object>> list=ss.selectDaiShen(id);
		PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("code",0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
}
