package com.lwb.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lwb.dao.Dept1Dao;
import com.lwb.entity.Dept1;
import com.lwb.entity.Record;
import com.zx.entity.EmployeeTree;

@Controller
@RequestMapping("/dept1")
public class Dept1Controller {

	@Autowired
	private Dept1Dao dao1;

	@RequestMapping("/queryDept")
	@ResponseBody
	public List<EmployeeTree> queryDept(){
		List<Dept1> list=dao1.queryDept();
		System.out.println(list);
		//����deptlist���Ͻ���dept�е�����
		List<EmployeeTree> deptlist=new ArrayList<EmployeeTree>();
		for (Dept1 dept:list) {//����list
			EmployeeTree tree=new EmployeeTree();
			//��ֵ
			tree.setId(dept.getDeptId());
			tree.setText(dept.getDeptName());
			List<Record> d=dept.getRecord();
			List<EmployeeTree> ployeetree=new ArrayList<EmployeeTree>();
			for (Record rec:d) {
				EmployeeTree ployee=new EmployeeTree();
				ployee.setId(rec.getRoleId());
				ployee.setText(rec.getHrRecordName());
				ployeetree.add(ployee);
			}
			tree.setChildren(ployeetree);
			deptlist.add(tree);
			System.out.println(deptlist);
		}
		return deptlist;
		
		}
	
}
