package com.lwb.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lwb.dao.DeptDao;
import com.lwb.entity.Dept;
import com.lwb.entity.EmployeeTree;
import com.lwb.entity.Record;

@Controller
@RequestMapping("/dept")
public class DeptController {

	@Autowired
	private DeptDao dao;
	
	@RequestMapping("/queryDept0")
	@ResponseBody
	public List<EmployeeTree> queryDept(){
		List<Dept> list=dao.queryDept0();
		System.out.println(list);
		//创建deptlist集合接受dept中的数据
		List<EmployeeTree> deptlist=new ArrayList<EmployeeTree>();
		for (Dept dept:list) {//遍历list
			EmployeeTree tree=new EmployeeTree();
			//赋值
			tree.setId(dept.getDeptId());
			tree.setText(dept.getDeptName());
			tree.setState("closed");
			List<Record> d=dept.getRecord();
			List<EmployeeTree> ployeetree=new ArrayList<EmployeeTree>();
			for (Record rec:d) {
				EmployeeTree ployee=new EmployeeTree();
				ployee.setId(rec.getHrRecordId());
				ployee.setText(rec.getHrRecordName());
				ployeetree.add(ployee);
			}
			tree.setChildren(ployeetree);
			deptlist.add(tree);
			System.out.println(deptlist);
		}
		return deptlist;
		
		}
	
	
	
	@RequestMapping("/queryDept4")
	@ResponseBody
	public List<EmployeeTree> queryDept4(){
		List<Dept> list=dao.queryDept4();
		System.out.println(list);
		//创建deptlist集合接受dept中的数据
		List<EmployeeTree> deptlist=new ArrayList<EmployeeTree>();
		for (Dept dept:list) {//遍历list
			EmployeeTree tree=new EmployeeTree();
			//赋值
			tree.setId(dept.getDeptId());
			tree.setText(dept.getDeptName());
			tree.setState("closed");
			List<Record> d=dept.getRecord();
			List<EmployeeTree> ployeetree=new ArrayList<EmployeeTree>();
			for (Record rec:d) {
				EmployeeTree ployee=new EmployeeTree();
				ployee.setId(rec.getHrRecordId());
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
