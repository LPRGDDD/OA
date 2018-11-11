package com.lxm.service;

import java.util.List;
import java.util.Map;

import com.lxm.entity.DutyRoster;

public interface DutyRosterService {
	/**
	 * ɾ��
	 * @param drid
	 * @return
	 */
	public int deleteByPrimaryKey(Integer drid);
	/**
	 * ���
	 * @param record  ʵ�����
	 * @return
	 */
	public int insert(DutyRoster record);
	/**
	 * �޸� �Ƿ����� ��״̬
	 * @param id
	 * @return
	 */
	public int updateState(Map<String,Object> map);
	/**
	 * �޸� �Ű�
	 * @return duty
	 */
	public int updateDuty(DutyRoster duty);
	/**
	 * ��ѯ
	 * @param drid
	 * @return
	 */
	public List<Map<String,Object>> selectByPrimaryKey();
	/**
	 * �޸Ĳ�ѯ
	 * @param id
	 * @return
	 */
	public DutyRoster selectById(int id);
	/**
	 * �޸�  �Ű�
	 * @param dr
	 * @return
	 */
	public int updateRoter(DutyRoster dr);
	/**
	 * ��ѯ�Ű�����Ϣ
	 * @return id ��ԱiD
	 */
	public List<Map<String,Object>> qeruyAll(int id);
	/**
	 * ����ͳ��
	 * @param map
	 * @return
	 */
	public List<Map<String,Object>> KaoQinTongJi(Map<String,Object> map);
}
