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
import com.github.pagehelper.StringUtil;
import com.lxm.entity.DutyRoster;
import com.lxm.entity.Synthesis;
import com.lxm.service.SynthesisService;

@Controller
@RequestMapping("/WaiChu")
public class SynthesisController {
	@Autowired
	private SynthesisService ss;
	//�������Ǽ�
	@RequestMapping("/save")
	@ResponseBody
	public int save(Synthesis record){
		int id=ss.insert(record);
		return id;
	}
	//�������Ǽ�
	@RequestMapping("/QingJiaSave")
	@ResponseBody
	public int qingJiaSave(Synthesis sy){
		int id=ss.QingJiaSave(sy);
		return id;
	}
	//��ӳ���Ǽ�
	@RequestMapping("/ChuChaiSave")
	@ResponseBody
	public int ChuChaSave(Synthesis sy){
		int id=ss.JiaBanSave(sy);
		return id;
	}
	//��ѯ�����¼
	@RequestMapping("/QingJiaSel")
	@ResponseBody
	public Map<String,Object> QingJiaSel(int page,int limit,int id){
		PageHelper.startPage(page,limit);
		List<Map<String,Object>> list=ss.QingJiaSel(id);
		PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("code",0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	//��ѯ�Ӱ��¼
	@RequestMapping("/JiBanSel")
	@ResponseBody
	public Map<String,Object> JiaBanSel(int page,int limit,int id){
		PageHelper.startPage(page,limit);
		List<Map<String,Object>> list=ss.JiaBanSel(id);
		PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("code",0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	//��ѯ�Ӱ��¼
		@RequestMapping("/ChuChaiSel")
		@ResponseBody
		public Map<String,Object> ChuChaiSel(int page,int limit,int id){
			PageHelper.startPage(page,limit);
			List<Map<String,Object>> list=ss.ChuChaiSel(id);
			PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
			Map<String, Object> map = new HashMap<String, Object>();
	        map.put("code",0);
	        map.put("msg", "");
	        map.put("count",info.getTotal());
	        map.put("data", info.getList());
			return map;
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
		System.out.println("����"+sId+"----"+id);
		Map<String,Object> list=ss.selectUpdate(id,sId);
		req.setAttribute("list",list); 
		return "page/view/lxm/updateWai";
	}
	//�޸���� ��¼iD��ѯ
	@RequestMapping("/QingSel/{sId}/{id}")
	public String updateQing(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id){
		Map<String,Object> list=ss.QingJiaUpdate(id, sId);
		req.setAttribute("list", list); 
		return "page/view/lxm/QingJiaUpdate";
	}
	//�޸ļӰ� ��¼iD��ѯ
		@RequestMapping("/JiaBanSel/{sId}/{id}")
		public String updateJIa(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id){
			Map<String,Object> list=ss.JiaBanUpdate(id, sId);
			req.setAttribute("list", list); 
			return "page/view/lxm/JiaBanUpdate";
		}
	//�޸ĳ��� ��¼iD��ѯ
	@RequestMapping("/ChuChaiUpdate/{sId}/{id}")
	public String updateChuChai(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id){
		Map<String,Object> list=ss.ChuChaiUpdate(id, sId);
		req.setAttribute("list", list); 
		return "page/view/lxm/ChuChaiUpdate";
	}
	//�޸�����Ǽ�
	@RequestMapping("/updateWai")
	@ResponseBody
	public int updateWai(Synthesis sy){
		int id=ss.updateWai(sy);
		return id;
	}
	//�޸���� ���Ӱࡢ �ǼǼ�¼
	@RequestMapping("/QingXiu")
	@ResponseBody
	public int updateQing(Synthesis sy){
		int id=ss.QingjiaXiu(sy);
		return id; 
	}
	//�޸ĳ��� �ǼǼ�¼
	@RequestMapping("/CuhChaiXiu")
	@ResponseBody
	public int updateChuChai(Synthesis sy){
		int id=ss.ChuChaiXiu(sy);
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
	@ResponseBody
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
	//��������ѯ������
	@RequestMapping("/Xiang/{sId}/{id}/{syState}")
	public String XiantSel(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id,@PathVariable("syState")int syState){
		if(syState==1){//���
			Map<String,Object> list=ss.selectUpdate(id,sId);
			req.setAttribute("list", list);
			return "page/view/lxm/XiangQing";
		}else if(syState==2){//���
			Map<String,Object> list=ss.selectUpdateQing(id,sId);
			req.setAttribute("list", list); 
			return "page/view/lxm/XiangQingQing";
		}else if(syState==3){//�Ӱ�
			Map<String,Object> list=ss.selectUpdate(id,sId);
			req.setAttribute("list", list); 
			return "page/view/lxm/JiaBanXiang";
		}else if(syState==4){//����
			Map<String,Object> list=ss.selectUpdate(id,sId);
			req.setAttribute("list", list); 
			return "page/view/lxm/ChuChaiXiang";
		}
		return null;
	}
	//����������鿴����
		@RequestMapping("/WaiXiang/{sId}/{id}/{syState}")
		public String XiantSelWai(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id,@PathVariable("syState")int syState){
			if(syState==1){//���
				Map<String,Object> list=ss.selectUpdate(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/XiangQingWai";
			}else if(syState==2){//���
				Map<String,Object> list=ss.selectUpdate(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/XiangQingJia";
			}else if(syState==3){//�Ӱ�
				Map<String,Object> list=ss.selectUpdate(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/XiangQingJiaBan";
			}else if(syState==4){//����
				Map<String,Object> list=ss.selectUpdate(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/XiangQingChuChai";
			}
			return null;
		}
	//����ع��鿴����
		@RequestMapping("/HuiXiang/{sId}/{id}/{syState}")
		public String updateHuiGui(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id,@PathVariable("syState")int syState){
			if(syState==1){//���
				Map<String,Object> list=ss.selectXiang(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/WaiXiang";
			}else if(syState==2){//���
				Map<String,Object> list=ss.selectXiang(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/QingXiang";
			}else if(syState==3){//�Ӱ�
				Map<String,Object> list=ss.selectXiang(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/JiaXiang";
			}else if(syState==4){//����
				Map<String,Object> list=ss.selectXiang(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/ChaiXiang";
			}
			return null;
		}
	//ͨ������
	@RequestMapping("/updateState")
	@ResponseBody
	public int updateState(int sid){
		int id=ss.updateState(sid);
		return id;
	}
	//�ع�
	@RequestMapping("/HuiGui")
	@ResponseBody
	public int WaiHUiGui(String syXiao,int sid){
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("syXiao", syXiao);
		map.put("sid",sid);
		int id=ss.WaiChuHuiGui(map);
		return id;
	}
	//����
	@RequestMapping("/BoHui/{sId}")
	public String Bohui(HttpServletRequest req,@PathVariable("sId")int sid){
		System.out.println(sid+"��ȡ��");
		req.setAttribute("sid", sid);
		return "page/view/lxm/BoHui";
	}
	//�����޸�
	@RequestMapping("/BoHuiUpdate")
	@ResponseBody
	public int BoHuiUpdate(String syName,int sid){
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("syName", syName);
		map.put("sid",sid);
		int id=ss.BoHuiUpdate(map);
		return id;
	}
	//ͨ��������  ��ѯ���  �ѻع�
	@RequestMapping("/TongWai")
	@ResponseBody
	public Map<String,Object> WaiSelect(int page,int limit,int id,String username){
		PageHelper.startPage(page,limit);
		Map<String, Object> map1 = new HashMap<String, Object>();
		System.out.println(id+"����"+username+"����");
		map1.put("id", id);
		map1.put("username", username);
		List<Map<String,Object>> list=ss.ShenWaiChu(map1);
		//List<Map<String,Object>> list=ss.ShenWaiChu(id);
		PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("code",0);
        map.put("msg","");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	//ͨ��������  ��ѯ���  �ѻع�
	@RequestMapping("/TongQing")
	@ResponseBody
	public Map<String,Object> SelectQing(int page,int limit,int id,String username){
		PageHelper.startPage(page,limit);
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("id", id);
		map1.put("username", username);
		List<Map<String,Object>> list=ss.ShenQing(map1);
		PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("code",0);
        map.put("msg","");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	//ͨ��������  ��ѯ�Ӱ�  �ѻع�
		@RequestMapping("/TongJia")
		@ResponseBody
		public Map<String,Object> SelectJia(int page,int limit,int id,String username){
			PageHelper.startPage(page,limit);
			Map<String, Object> map1 = new HashMap<String, Object>();
			map1.put("id", id);
			map1.put("username", username);
			List<Map<String,Object>> list=ss.ShenJia(map1);
			PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
			Map<String, Object> map = new HashMap<String, Object>();
	        map.put("code",0);
	        map.put("msg","");
	        map.put("count",info.getTotal());
	        map.put("data", info.getList());
			return map;
		}
		//ͨ��������  ��ѯ����   �ѻع�
				@RequestMapping("/TongChuChai")
				@ResponseBody
				public Map<String,Object> Selectchuchai(int page,int limit,int id,String username){
					PageHelper.startPage(page,limit);
					Map<String, Object> map1 = new HashMap<String, Object>();
					map1.put("id", id);
					map1.put("username", username);
					List<Map<String,Object>> list=ss.ShenChuChai(map1);
					PageInfo<Map<String, Object>> info=new PageInfo<Map<String, Object>>(list);
					Map<String, Object> map = new HashMap<String, Object>();
			        map.put("code",0);
			        map.put("msg","");
			        map.put("count",info.getTotal());
			        map.put("data", info.getList());
					return map;
				}
}
