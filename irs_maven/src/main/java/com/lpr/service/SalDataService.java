package com.lpr.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lpr.entity.SalData;
import com.lpr.entity.SalaDataAndAdmin;

public interface SalDataService {
	/**
	 * ����״̬��1,0�����з�ҳ��ѯ
	 * @return
	 */
	public List<Map> findByStatus();
	public List<Map> findByStatus1();
	public int insert(SalData s,String userId);
	/**
	 * �������̱�id��ѯ�ϱ�����
	 * @param sid
	 * @return
	 */
	public List<Map> findBySalaryFlowId(int sid);
	/**
	 * ����¼��
	 * @param userStr
	 * @param salaryflowIdStr
	 * @param list
	 * @return
	 */
	public int PLInsert(String userStr,String salaryflowIdStr,List<SalaDataAndAdmin> list);
}