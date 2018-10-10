package com.gd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gd.entity.Student;
import com.gd.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	@Autowired
	private StudentService ser;
	@RequestMapping("/findAll")
	public String findAll(Map map) {
		List<Student> list=ser.findAll();
		map.put("list", list);
		return "findAll";
	}
	@ResponseBody
	@RequestMapping("/jsonFind")
	public List<Student> jsonFind(){
		List<Student> list=ser.findAll();
		return list;
	}
	@RequestMapping("/save")
	public void save( Student s,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		ObjectMapper mapper =new ObjectMapper();
		mapper.writeValueAsString(s);
		int result=ser.save(s);
		if (result!=0) {
			out.print("添加成功");
		}else {
			out.print("添加失败");
		}
	}
	@RequestMapping("/save1")
	public String save1(Student s){
		System.out.println(s);
		ser.save(s);
		return "findAll";
	}
}
