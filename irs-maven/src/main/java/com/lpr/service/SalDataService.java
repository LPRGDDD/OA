package com.lpr.service;

import java.util.List;
import java.util.Map;

import com.lpr.entity.SalData;

public interface SalDataService {
	/**
	 * ����״̬��1,0�����з�ҳ��ѯ
	 * @return
	 */
	public List<Map> findByStatus();
	public List<Map> findByStatus1();
	public int insert(SalData s,String userId);
}
