package com.gd.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gd.entity.Goods;
import com.gd.entity.GoodsType;
import com.gd.service.GoodsService;
import com.gd.util.Pager;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	/*自动注入*/
	@Autowired
	private GoodsService ser;
	
	/*商品查询*/
	@ResponseBody
	@RequestMapping("findAll")
	public List<Map<String, Object>> findAll(){
		List<Map<String, Object>> list=ser.findAll();
		return list;
	}
	/*商品添加*/
	@RequestMapping("/save")
	public void save( Goods g,HttpServletResponse response) throws IOException{
		System.out.println(g);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.save(g);
		if (result!=0) {
			out.print("添加成功");
		}else {
			out.print("添加失败");
		}
	}
	/*单个商品ID查询*/
	@ResponseBody
	@RequestMapping("/findById")
	public Goods findById(int goodsid){
		Goods g=ser.findById(goodsid);
		return g;
	}
	/*商品修改*/
	@RequestMapping("/update")
	public void update(Goods g,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.update(g);
		if (result!=0) {
			out.print("修改成功");
		}else {
			out.print("修改失败");
		}
	}
	/*商品删除*/
	public void delete(int goodsid,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
		int result=ser.delete(goodsid);
		if (result!=0) {
			out.print("删除成功");
		}else {
			out.print("删除失败");
		}
	}
	/*模糊查询*/
	@ResponseBody
	@RequestMapping("mohuFind")
	public List<Map<String, Object>> mohuFind(String goodsname){
		System.out.println(goodsname);
		List<Map<String, Object>> list=ser.mohuFind(goodsname);
		return list;
	}
	/*分页查询*/
	@ResponseBody
	@RequestMapping("/pageFind")
	public Pager pageFind(HttpServletRequest request,Integer number,Integer currentPage,Integer pageSize){
		Map<String, Object> map= new HashMap<String, Object>();
		/*map.put("startIndex", p.getStartIndex());
		map.put("pageSize", p.getPageSize());*/
		ser.pageFind(map);
		return null;
		
	}
	
	/*商品照片上传*/
	@RequestMapping("/uploads")
	public void upload(@RequestParam("files") MultipartFile[] files, HttpServletRequest request,HttpServletResponse response) throws IOException{
		if(files!=null && files.length>0){
			for (MultipartFile file : files) {
				String path=request.getServletContext().getRealPath("/resources/upload/");
				String fileName=file.getOriginalFilename();
				File targetFile=new File(path,fileName);
				if(!targetFile.exists()){
					targetFile.mkdirs();
				}
				try {
					file.transferTo(targetFile);
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				//输出部分
				String url=request.getContextPath()+"/resources/upload/"+fileName;
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out=response.getWriter();
				out.println(url);
		}
	}
}
}
