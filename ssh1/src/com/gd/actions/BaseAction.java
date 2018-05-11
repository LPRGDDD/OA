package com.gd.actions;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport{
	//封装 获取 request,response,printwriter,session
		public Map getRequest(){
			return (Map) ActionContext.getContext().get("request");
		}
		public HttpServletResponse getResponse(){
			HttpServletResponse response=ServletActionContext.getResponse();
			response.setContentType("text/html;charset=utf-8");
			return response;
		}
		public PrintWriter getpPrintWriter() throws IOException{
			HttpServletResponse response=ServletActionContext.getResponse();
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			return out;
			
		}
}
