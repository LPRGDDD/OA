package com.irs.service;
import java.util.Date;

import com.irs.pojo.TbLog;
import com.irs.pojo.UserSearch;
import com.irs.util.ResultUtil;

public interface LogService {
	//�����־
	public void insLog(TbLog log);
	
	//��ȡ��־�б�
	ResultUtil selLogList(Integer page, Integer limit,UserSearch search);

	//ɾ��ָ��������ǰ����־
	public int delLogsByDate(Date date);
}
