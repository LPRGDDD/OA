package com.lxm.serviceImpl;

import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.lxm.dao.ExcleMapper;
import com.lxm.entity.JobWork;
import com.lxm.service.ExcleService;
import com.lxm.util.ExcelUtils;
import com.mysql.jdbc.StringUtils;
@Service
public class ExcleServiceImpl implements ExcleService{

	@Autowired
	private ExcleMapper em;
	
	public String ajaxUploadExcel(HttpServletRequest request,HttpServletResponse response){

		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;    

        

        MultipartFile file = multipartRequest.getFile("upfile");  

        if(file.isEmpty()){  

            try {

				throw new Exception("文件不存在！");

			} catch (Exception e) {

				e.printStackTrace();

			}  

        }  

          

        InputStream in =null;  

        try {

			in = file.getInputStream();

		} catch (IOException e) {

			e.printStackTrace();

		}  

        

		List<List<Object>> listob = null; 
		try {
			listob = new ExcelUtils().getBankListByExcel(in,file.getOriginalFilename());
			 for (int i = 0; i < listob.size(); i++) {  
		            List<Object> lo = listob.get(i);  
		            JobWork vo = new JobWork(); 
						 if(StringUtils.isNullOrEmpty(String.valueOf(lo.get(0))))
		            		vo.setId(0);  
						 else
							 vo.setId(Integer.valueOf(String.valueOf(lo.get(0))));  
		            		//System.out.println(Integer.valueOf(String.valueOf(lo.get(0)))+"管理员");
				            vo.setJoname(String.valueOf(lo.get(1)));  

				            vo.setJtdate(String.valueOf(lo.get(2)));   

				            vo.setJtdate1(String.valueOf(lo.get(3)));  

				            vo.setJtdate2(String.valueOf(lo.get(4))); 
				            vo.setJtdate3(String.valueOf(lo.get(5))); 
				            int num=em.insert(vo);
				            if(num>0){
				            	System.out.println("添加成功");
				            }else{
				            	System.out.println("添加失败");
				            }
				            
		        }           
		} catch (Exception e) {

			e.printStackTrace();

		}   
	    //该处可调用service相应方法进行数据保存到数据库中，现只对数据输出  
        return "导入Excle表格成功";

	}

	public List<JobWork> selectAll(int id) {

		List<JobWork> list=em.selectAll(id);
		for (JobWork jobWork : list) {
			System.out.println(jobWork.toString());
			String[] str= jobWork.getJtdate().split(" ");
			String name=str[0];//获得签到日期 YYYY-MM-DD
			String name1=str[1];//获得签到日期 hh:mm:ss
		}
		return em.selectAll(id);
	}

}
