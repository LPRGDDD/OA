package com.lxm.dao;

import java.util.List;
import java.util.Map;

import com.lxm.entity.DutyRoster;

public interface DutyRosterMapper {
	/**
	 * ɾ��
	 * @param drid
	 * @return
	 */
	public int deleteByPrimaryKey(Integer drid);
	/**
	 * �޸� �Ƿ����� ��״̬
	 * @param id
	 * @return
	 */
	public int updateState(Map<String,Object> map);
	/**
	 * �޸� �Ű� ״̬
	 * @return duty
	 */
	public int updateDuty(DutyRoster duty);
	/**
	 * ����
	 * @param record  ʵ�����
	 * @return
	 */
	public int insert(DutyRoster record);

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
	
}