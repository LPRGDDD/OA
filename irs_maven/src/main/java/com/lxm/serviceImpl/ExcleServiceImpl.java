package com.lxm.serviceImpl;

import java.io.InputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.lxm.dao.ExcleMapper;
import com.lxm.entity.JobWork;
import com.lxm.service.ExcleService;
@Service
public class ExcleServiceImpl implements ExcleService{

	@Autowired
	private ExcleMapper em;


	// @Autowired
	// private POIService POIservice;
	//导入excel
	@Override
	public void impExcel(MultipartFile file) throws Exception {
		// TODO Auto-generated method stub
		/*System.out.println("............");
		List<JobWork> impusers = new  ArrayList<>();
		if(file.isEmpty()){  
			throw new Exception("文件不存在！");  
		}  
		InputStream in = file.getInputStream();  
		List<List<Object>> listob = new ImportExcelUtils().getBankListByExcel(in,file.getOriginalFilename()); 
		in.close();

		for (int i = 1; i < listob.size(); i++) {  
			List<Object> lo = listob.get(i);  
			JobWork employee = new JobWork(); 
			String id = String.valueOf(lo.get(0));
			employee.setId(Integer.parseInt(id));
			employee.setJoname(String.valueOf(lo.get(1)));
			employee.setJtdate(String.valueOf(lo.get(2)));
			employee.setJtdate(String.valueOf(lo.get(3)));
			impusers.add(employee);  

		} 
		System.out.println("impusersSize:"+impusers.size());
		System.out.println(impusers.toString());
		em.impusers(impusers);*/
	}


	@Override
	public List<JobWork> selectAll(int id) {

		List<JobWork> list=em.selectAll(id);
		for (JobWork jobWork : list) {
			System.out.println(jobWork.toString());
			String[] str= jobWork.getJtdate().split(" ");
			String name=str[0];//获得签到日期 YYYY-MM-DD
			System.out.println(name+"name");
			String name1=str[1];//获得签到日期 hh:mm:ss
			System.out.println(name1+"name1");
		}
		return em.selectAll(id);
	}

}
