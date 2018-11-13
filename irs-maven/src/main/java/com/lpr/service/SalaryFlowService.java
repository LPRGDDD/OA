package com.lpr.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lpr.entity.SalItem;
import com.lpr.entity.SalaryFlow;
/**
 * н������еĹ������̱�
 * @author ����Ȼ
 *
 */
public interface SalaryFlowService {
	/**
	 * �½��������̣��������̱����ӣ�
	 * @param salaryflowId�������̱��
	 * @return
	 */
	public int insert(SalaryFlow sa);
	/**
	 * �������̱�Ĳ�ѯ
	 * @param map
	 * @return
	 */
	public List<Map> findAll(String keyWord,String userName);
	/**
	 * �������̱���޸�
	 * @param salaryflow
	 * @return
	 */
	public int update(SalaryFlow salaryflow);
	/**
	 * ���ݹ������̱��ɾ��
	 * @param salaryflowId�������̱��
	 * @return
	 */
    public int delete(int salaryflowId);
    /**
     * �������̱༭֮ǰ�Ĳ�ѯ
     * @param salaryflowId�������̱��
     * @return
     */
    SalaryFlow selectByPrimaryKey(Integer salaryflowId);
    /**
     * ����ID��ѯ�������̱�
     * @param id
     * @return
     */
    public SalaryFlow findById(int id);
    /**
     * �޸�״̬
     * @param s
     * @return
     */
    public int setXcStatus(SalaryFlow s);
}
