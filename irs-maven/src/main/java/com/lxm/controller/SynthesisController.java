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
	//添加外出登记
	@RequestMapping("/save")
	@ResponseBody
	public int save(Synthesis record){
		int id=ss.insert(record);
		return id;
	}
	//添加申请登记
	@RequestMapping("/QingJiaSave")
	@ResponseBody
	public int qingJiaSave(Synthesis sy){
		int id=ss.QingJiaSave(sy);
		return id;
	}
	//添加出差登记
	@RequestMapping("/ChuChaiSave")
	@ResponseBody
	public int ChuChaSave(Synthesis sy){
		int id=ss.JiaBanSave(sy);
		return id;
	}
	//查询申请记录
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
	//查询加班记录
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
	//查询加班记录
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
	//查询外出登记
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
	//修改外出登记 iD查询
	@RequestMapping("/WaiSel/{sId}/{id}")
	public String updateSel(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id){
		System.out.println("进来"+sId+"----"+id);
		Map<String,Object> list=ss.selectUpdate(id,sId);
		req.setAttribute("list",list); 
		return "page/view/lxm/updateWai";
	}
	//修改请假 记录iD查询
	@RequestMapping("/QingSel/{sId}/{id}")
	public String updateQing(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id){
		Map<String,Object> list=ss.QingJiaUpdate(id, sId);
		req.setAttribute("list", list); 
		return "page/view/lxm/QingJiaUpdate";
	}
	//修改加班 记录iD查询
		@RequestMapping("/JiaBanSel/{sId}/{id}")
		public String updateJIa(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id){
			Map<String,Object> list=ss.JiaBanUpdate(id, sId);
			req.setAttribute("list", list); 
			return "page/view/lxm/JiaBanUpdate";
		}
	//修改出差 记录iD查询
	@RequestMapping("/ChuChaiUpdate/{sId}/{id}")
	public String updateChuChai(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id){
		Map<String,Object> list=ss.ChuChaiUpdate(id, sId);
		req.setAttribute("list", list); 
		return "page/view/lxm/ChuChaiUpdate";
	}
	//修改外出登记
	@RequestMapping("/updateWai")
	@ResponseBody
	public int updateWai(Synthesis sy){
		int id=ss.updateWai(sy);
		return id;
	}
	//修改请假 、加班、 登记记录
	@RequestMapping("/QingXiu")
	@ResponseBody
	public int updateQing(Synthesis sy){
		int id=ss.QingjiaXiu(sy);
		return id; 
	}
	//修改出差 登记记录
	@RequestMapping("/CuhChaiXiu")
	@ResponseBody
	public int updateChuChai(Synthesis sy){
		int id=ss.ChuChaiXiu(sy);
		return id; 
	}
	//删除外出记录 
	@RequestMapping("/deleteWai")
	@ResponseBody
	public int delete(int id){
		int num=ss.delete(id);
		return num;
	}
	//查询待审批外出、请假、加班、出差
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
	//待审批查询看详情
	@RequestMapping("/Xiang/{sId}/{id}/{syState}")
	public String XiantSel(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id,@PathVariable("syState")int syState){
		if(syState==1){//外出
			Map<String,Object> list=ss.selectUpdate(id,sId);
			req.setAttribute("list", list);
			return "page/view/lxm/XiangQing";
		}else if(syState==2){//请假
			Map<String,Object> list=ss.selectUpdateQing(id,sId);
			req.setAttribute("list", list); 
			return "page/view/lxm/XiangQingQing";
		}else if(syState==3){//加班
			Map<String,Object> list=ss.selectUpdate(id,sId);
			req.setAttribute("list", list); 
			return "page/view/lxm/JiaBanXiang";
		}else if(syState==4){//出差
			Map<String,Object> list=ss.selectUpdate(id,sId);
			req.setAttribute("list", list); 
			return "page/view/lxm/ChuChaiXiang";
		}
		return null;
	}
	//审批后外出查看详情
		@RequestMapping("/WaiXiang/{sId}/{id}/{syState}")
		public String XiantSelWai(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id,@PathVariable("syState")int syState){
			if(syState==1){//外出
				Map<String,Object> list=ss.selectUpdate(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/XiangQingWai";
			}else if(syState==2){//请假
				Map<String,Object> list=ss.selectUpdate(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/XiangQingJia";
			}else if(syState==3){//加班
				Map<String,Object> list=ss.selectUpdate(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/XiangQingJiaBan";
			}else if(syState==4){//出差
				Map<String,Object> list=ss.selectUpdate(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/XiangQingChuChai";
			}
			return null;
		}
	//外出回归后查看详情
		@RequestMapping("/HuiXiang/{sId}/{id}/{syState}")
		public String updateHuiGui(HttpServletRequest req,@PathVariable("sId")int sId,@PathVariable("id")int id,@PathVariable("syState")int syState){
			if(syState==1){//外出
				Map<String,Object> list=ss.selectXiang(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/WaiXiang";
			}else if(syState==2){//请假
				Map<String,Object> list=ss.selectXiang(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/QingXiang";
			}else if(syState==3){//加班
				Map<String,Object> list=ss.selectXiang(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/JiaXiang";
			}else if(syState==4){//出差
				Map<String,Object> list=ss.selectXiang(id,sId);
				req.setAttribute("list", list); 
				return "page/view/lxm/ChaiXiang";
			}
			return null;
		}
	//通过审批
	@RequestMapping("/updateState")
	@ResponseBody
	public int updateState(int sid){
		int id=ss.updateState(sid);
		return id;
	}
	//回归
	@RequestMapping("/HuiGui")
	@ResponseBody
	public int WaiHUiGui(String syXiao,int sid){
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("syXiao", syXiao);
		map.put("sid",sid);
		int id=ss.WaiChuHuiGui(map);
		return id;
	}
	//驳回
	@RequestMapping("/BoHui/{sId}")
	public String Bohui(HttpServletRequest req,@PathVariable("sId")int sid){
		System.out.println(sid+"获取到");
		req.setAttribute("sid", sid);
		return "page/view/lxm/BoHui";
	}
	//驳回修改
	@RequestMapping("/BoHuiUpdate")
	@ResponseBody
	public int BoHuiUpdate(String syName,int sid){
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("syName", syName);
		map.put("sid",sid);
		int id=ss.BoHuiUpdate(map);
		return id;
	}
	//通过审批后  查询外出  已回归
	@RequestMapping("/TongWai")
	@ResponseBody
	public Map<String,Object> WaiSelect(int page,int limit,int id,String username){
		PageHelper.startPage(page,limit);
		Map<String, Object> map1 = new HashMap<String, Object>();
		System.out.println(id+"号码"+username+"名字");
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
	//通过审批后  查询请假  已回归
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
	//通过审批后  查询加班  已回归
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
		//通过审批后  查询出差   已回归
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
