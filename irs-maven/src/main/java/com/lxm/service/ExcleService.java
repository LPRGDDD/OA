package com.lxm.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

import com.lxm.entity.JobWork;

public interface ExcleService {
	/**
	 * ����EXcle
	 * @param request
	 * @param response
	 * @return
	 */
	public	String ajaxUploadExcel(HttpServletRequest request,HttpServletResponse response);
	 /**
		 * ��ѯ
		 * @return
		 */
	public List<JobWork> selectAll(int id);
}
