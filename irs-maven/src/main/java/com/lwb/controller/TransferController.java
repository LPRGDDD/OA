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
import com.lwb.entity.Transfer;
import com.lwb.service.HireService;
import com.lwb.service.RecordService;
import com.lwb.service.TransferService;

@Controller
@RequestMapping("/transfer")
public class TransferController {

	@Autowired
	private TransferService ser;
	@Autowired
	private HireService deptser;
	@Autowired
	private RecordService rolesser;
	
	/*��תҳ��*/
	@RequestMapping("/findtransfer.action")
	public String find0(){
		return "page/view/lwb/hr_rsddgl";
	}
	
	@RequestMapping("/queryTransfer")
	@ResponseBody
	public Map queryTransfer(Integer page,Integer limit) {
		PageHelper.startPage(page,limit);
		List<Map> list=ser.queryTransfer();
		PageInfo<Map> info=new PageInfo<Map>(list);
		Map map = new HashMap();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",info.getTotal());
        map.put("data", info.getList());
		return map;
	}
	
	
	@RequestMapping("/transferSave")
	public void transferSave(HttpServletResponse response,Transfer tf) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
	    int i=ser.transferSave(tf);
	    ser.updateDept(tf.getHrRecordId(), tf.getDeptId());
	    if (i>0) {
	    	out.print("��ӳɹ�");
		} else {
			out.print("���ʧ��");
		}
	}
	
	    //���ݲ��Ų�ѯ��Ա
		@RequestMapping("/recoById")
		@ResponseBody
		public List<Map> recoById(int id){
			List<Map> list=ser.recoById(id);
			return list;
		}
		//������Ա��ѯ�����ݣ�����ʾ��ҳ����
		@RequestMapping("/recordFZ")
		@ResponseBody
		public List<Map> recordFZ(int id){
			List<Map> list=ser.recordFZ(id);
			return list;
		}
		@RequestMapping("/transferById/{hr_transfer_id}")
		public String transferById(HttpServletRequest req,@PathVariable("hr_transfer_id")int hr_transfer_id){
			Map list=ser.transferById(hr_transfer_id);
			List<Map> d=deptser.seleDept();//�����������
			List<Map> r=rolesser.seleroles();//��ɫ�������
			List<Map> record=ser.queryrecord();
			req.setAttribute("dept", d);
			req.setAttribute("role", r);
			req.setAttribute("list", list);
			req.setAttribute("reco", record);
			return "page/view/lwb/rsddUpdate";
		}
		

		@RequestMapping("/updateTransfer")
		public void updateTransfer(Transfer tf,HttpServletResponse response) throws IOException{
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out =response.getWriter();
			int result=ser.updateTransfer(tf);
			ser.updateDept(tf.getHrRecordId(), tf.getDeptId());
			if (result!=0) {
				out.print("�޸ĳɹ�");
			}else {
				out.print("�޸�ʧ��");
			}
		}
}
