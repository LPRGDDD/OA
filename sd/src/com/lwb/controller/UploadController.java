package com.lwb.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class UploadController {
	@RequestMapping("/upload")
	public void upload(@RequestParam("files") MultipartFile[] files,HttpServletRequest request,HttpServletResponse response) throws IOException{
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
				
				//Êä³ö²¿·Ö
				String url=request.getContextPath()+"/resources/upload/"+fileName;
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out=response.getWriter();
				out.println(url);
		}
	}
}
 }
