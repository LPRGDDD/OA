package com.lxm.dao;

import java.util.List;
import java.util.Map;

import com.lxm.entity.DutyRoster;
import com.lxm.entity.Pbjl;

public interface PbjlMapper {
   /**
    * ����Ű��¼
    * @param p
    * @return
    */
	public int insertAll(Pbjl p);
	/**
	 * ������Ա��ѯ�򿨼�¼
	 * @param id ��ԱId
	 * @return
	 */
	//public List<Pbjl> selectQuery(Map<String,Object> map);
	/**
	 * �ж��Ƿ��ظ�
	 * @param p
	 * @return
	 */
	public int selectPan(DutyRoster dr);
}