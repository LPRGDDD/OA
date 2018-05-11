package com.zx.Action;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.zx.Service.hService;
import com.zx.util.Pager;
@Controller
public class hAction extends ActionSupport{
	@Autowired
	private hService service;
	int pageSize=2;
	int curPage;
	
    public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public hService getService() {
		return service;
	}

	public void setService(hService service) {
		this.service = service;
	}

	public String findByPage(){
    	Pager p= service.findByPage(curPage, pageSize);
    	ServletActionContext.getRequest().setAttribute("list", p);
		return SUCCESS;
    	
    }
} 
