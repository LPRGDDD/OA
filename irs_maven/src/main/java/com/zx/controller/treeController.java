package com.zx.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zx.dao.goodtypeMapper;
import com.zx.entity.EmployeeTree;
import com.zx.entity.goodtype;
import com.zx.entity.shop;
@Controller
@RequestMapping("tree")
public class treeController {
	@Autowired
	private goodtypeMapper dao;
	@RequestMapping("findshop.action")
	public String find(){
		return "page/view/zx/MyJsp4";
	}
   @RequestMapping("dept")
   @ResponseBody
   public List<EmployeeTree> query(){
	   List<goodtype> list=dao.findAll();
	   List<EmployeeTree> depttree=new ArrayList<EmployeeTree>();
	   for (goodtype good : list) {
		EmployeeTree tree=new EmployeeTree();
		tree.setPid(good.getGoId());
		tree.setText(good.getGoName());
	    List<EmployeeTree> emptree=new ArrayList<EmployeeTree>();
	    List<shop> sh=good.getShop();
	    System.out.println(sh);
	   for (shop sho : sh) {
		   EmployeeTree tree2=new EmployeeTree();
		   System.out.println(sho.getsId());
		   tree2.setId(sho.getsId());
		   tree2.setText(sho.getsName());
		   emptree.add(tree2);
	}
	    tree.setChildren(emptree);
	    depttree.add(tree);
	}
	 //System.out.println(list);
	 		return depttree;

   }
 
}
