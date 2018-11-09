package com.lxm.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.lxm.entity.JobWork;

public interface ExcleService {
	 public void impExcel(MultipartFile file) throws Exception;
	 
	 /**
		 * ≤È—Ø
		 * @return
		 */
	public List<JobWork> selectAll(int id);
}
