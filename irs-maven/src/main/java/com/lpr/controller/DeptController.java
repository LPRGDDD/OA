package com.lpr.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lpr.service.DeptService;
/**
 * ���ű�
 * @author ����Ȼ
 *
 */
@Controller
@RequestMapping("/dept")
public class DeptController {
	/*�Զ�ע��*/
	@Autowired
	private DeptService service;
	@RequestMapping("/find.action")
	public String find(){
		return "page/view/lpr/Dept";
	}
	@RequestMapping("/mailfind.action")
	public String mail(){
		return "page/view/chl/transform";
	}
	@ResponseBody
	@RequestMapping("findAll")
	//���ű�Ĳ�ѯ
	public List<Map<String, Object>> findAll(){
		List<Map<String, Object>> list=service.findAll();
		return list;
	}
	//���ݲ��ű�Ŵ�Ա��
	@RequestMapping("/findUser")
	public @ResponseBody Map findUser(Integer page,Integer limit,Integer deptId) {//page�ǵ�ǰҳ��limit��ÿҳ��ʾ��ҳ��
		System.out.println(deptId);
		PageHelper.startPage(page, limit);//��ҳ���
		List<Map> list=service.findUser(deptId);
		PageInfo<Map> info=new PageInfo<Map>(list);//��������һ������pageInfo,��������list
		Map map = new HashMap();
		//��ǰ̨��map
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	//��ѯ����Ա��
	@RequestMapping("/findAllUser")
	public @ResponseBody Map findAllUser(Integer page,Integer limit) {//page�ǵ�ǰҳ��limit��ÿҳ��ʾ��ҳ��
		PageHelper.startPage(page, limit);//��ҳ���
		List<Map> list=service.findAllUser();
		PageInfo<Map> info=new PageInfo<Map>(list);//��������һ������pageInfo,��������list
		Map map = new HashMap();
		//��ǰ̨��map
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
}
